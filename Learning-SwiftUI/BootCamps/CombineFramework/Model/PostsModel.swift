//
//  PostsModel.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 01/12/2024.
//

import Foundation

struct PostsModel: Codable, Identifiable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
