//
//  Network.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 07/12/2024.
//

import Foundation
import Combine

struct Network{
    
    func getData<T: Decodable>(url: String, model: T.Type) -> AnyPublisher<T, Error>{
        guard let url = URL(string: url)
        else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap { data, response in
                guard let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode <= 299
                else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        
    }
    
}
