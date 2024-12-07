//
//  DownloadJsonDataUsingCombineViewModel.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 02/12/2024.
//

import Foundation
import Combine

class DownloadJsonDataUsingCombineViewModel: ObservableObject{
    
    @Published var posts: [PostsModel] = []
    
    private let network = Network()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        getPostsFromNetwork()
    }
    
    //MARK: - COMBINE STEPS TO FETCH DATA FROM API
    /*
     // 1 Create Publisher
     // 2 subsribe publisher on background thread
     // 3 receive on main thread
     // 4 trymap to check if the data is good to use or not
     // 5 decode data
     // 6 sink put the item in our app
     // 7 store (cancel subsribtion if needed)
     */
    
    //MARK: - GET THE DATA USING THE COMBINE NETWORK LAYER
    // getting the data which is the posts in our example using the network layer we made with combine along with MVVM arichtecture design pattern
    func getPostsFromNetwork(){
        network.getData(url: "https://jsonplaceholder.typicode.com/posts", model: [PostsModel].self)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Request succeeded")
                case .failure(let error):
                    print("Error: \(error)")
                }
            }, receiveValue: { [weak self] returnedData in
                self?.posts = returnedData
            })
            .store(in: &cancellables)
    }
    
    //MARK: - GET POSTS WITHOUT USING THE NETWORK LAYER
    /*
     func getPosts(){
         guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
         
         URLSession.shared.dataTaskPublisher(for: url)
             .subscribe(on: DispatchQueue.global(qos: .background))
             .receive(on: DispatchQueue.main)
             .tryMap(handleOutput)
 //            .tryMap { data, response in
 //                guard let response = response as? HTTPURLResponse,
 //                      response.statusCode >= 200 && response.statusCode < 300
 //                else {
 //                    throw URLError(.badServerResponse)
 //                }
 //                return data
 //            }
             .decode(type: [PostsModel].self, decoder: JSONDecoder())
             .sink { (completion) in
                 print("Completion: \(completion)")
             } receiveValue: {[weak self] returnedPosts in
                 self?.posts = returnedPosts
             }
             .store(in: &cancellables)
         
     }
    
    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data{
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300
        else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
     */
    
}
