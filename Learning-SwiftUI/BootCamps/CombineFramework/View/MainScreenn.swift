//
//  MainScreen.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 02/12/2024.
//

import SwiftUI

struct MainScreenn: View {
    
    @StateObject var viewModel = DownloadJsonDataUsingCombineViewModel()
    
    var body: some View {
        if let recipesResult = viewModel.recipes?.results{
            List {
                ForEach(recipesResult) { recipe in
                    VStack(alignment: .center) {
                        HStack{
                            Text(recipe.name)
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.vertical)
                            
                            // CALORIES
                           /// Text(" 🔥 \(recipe.nutrition.calories) Kcal")
                            
                            // Time Cooking
                            /// if let recipeTime = recipe.totalTimeTier?.displayTier{
                            
                            // Description Recipe
                            /// if let recipeDescription = recipe.description{
                            
                            // Instruction Recipe
                            /// if let recipesInstruction = recipe.instructions{
                            
                            // Rating Recipe
                            /// Text("⭐️ \(recipe.userRatings)")
                            
                            Text("\(recipe.credits)")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                        .bold()
                                        .padding()
                            
                        }
                        
                        AsyncImage(url: URL(string: recipe.thumbnailURL)) { recipeImage in
                            recipeImage
                                .resizable()
                                .frame(width: 200, height: 150)
                                .cornerRadius(10, corners: .allCorners)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
            }
        }
        else{
            ProgressView()
        }
        
        //MARK: - posts data in a list
        /*
         List {
             ForEach(viewModel.posts) { post in
                 VStack(alignment: .leading) {
                     Text(post.title)
                         .font(.headline)
                         .foregroundColor(.black)
                         .padding(.vertical)
                     Text(post.body)
                         .font(.body)
                         .foregroundColor(.gray)
                 }
             }
         }
         */
    }
}

struct MainScreenn_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenn()
    }
}
