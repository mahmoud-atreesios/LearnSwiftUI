//
//  ViewModel.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/11/2024.
//

import Foundation

//MARK: - DATA MODEL

struct FruitsModel: Identifiable{
    var id: String = UUID().uuidString
    var fruitName: String
    var fruitImage: String
    var fruitCount: Int
}

class ViewModel: ObservableObject{
    
    @Published var fruits: [FruitsModel] = []
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let apple = FruitsModel(fruitName: "Apple", fruitImage: "apple", fruitCount: 3)
        let banana = FruitsModel(fruitName: "Banana", fruitImage: "banana", fruitCount: 12)
        let orange = FruitsModel(fruitName: "Orange", fruitImage: "orange", fruitCount: 45)
        let peach = FruitsModel(fruitName: "Peach", fruitImage: "peach", fruitCount: 98)
        
        fruits.append(apple)
        fruits.append(banana)
        fruits.append(orange)
        fruits.append(peach)
    }
    
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
    
}
