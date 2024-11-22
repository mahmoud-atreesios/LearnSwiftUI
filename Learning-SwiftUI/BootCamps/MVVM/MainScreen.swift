//
//  ViewModel.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/11/2024.
//

import SwiftUI

struct MainScreen: View {
    
    /*
     AS IT IS THE FIRST SCREEN WE USE THE FRUITS VIEWMODEL OR IN ONTHER WORD IT IS THE CREATION OF THE VIEW MODEL SO
     IT WILL BE @STATEOBJECT
     */
    
    @StateObject var fruitsViewModel = ViewModel()
    @State private var selectedFruit: FruitsModel? = nil
    @State var showSecondScreen: Bool = false
    
    var body: some View {
        NavigationStack{
            List(content: {
                VStack {
                    ForEach(fruitsViewModel.fruits) { fruit in
                        HStack {
                            Image(fruit.fruitImage)
                                .resizable()
                                .frame(width: 130, height: 130)
                            Text("\(fruit.fruitName) = \(fruit.fruitCount)")
                                .font(.largeTitle)
                                .bold()
                        }
                        .onTapGesture {
                            selectedFruit = fruit
                            showSecondScreen.toggle()
                        }
                    }
                    .onDelete(perform: fruitsViewModel.deleteFruit)
                }
            })
            .navigationTitle("Fruits")
            .sheet(isPresented: $showSecondScreen) {
                if let selectedFruit = selectedFruit {
                    SeconddScreen(fruit: selectedFruit)
                }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
