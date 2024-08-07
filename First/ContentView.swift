//
//  ContentView.swift
//  First
//
//  Created by Mahmoud Mohamed Atrees on 03/08/2024.
//

import SwiftUI

struct ContentView: View{
    
    let emojis = ["👻","🤡","💀","🎃","👻","🤡","💀","🎃","👻","🤡","💀","🎃"]
    @State var cardCount: Int = 4

    var body: some View {
        VStack{
            ScrollView{
                cards
            }
            Spacer()
            cardsCountAdjustment
        }
        .padding()
    }
    
    var cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
            ForEach(0..<cardCount,id: \.self) { index in
                CardView(content:emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.cyan)
    }
    
    var cardsCountAdjustment: some View{
        HStack{
            carAdder
            cardRemover
        }
    }
    
    var cardRemover: some View{
        Button("Remove Card") {
            if cardCount > 1{
                cardCount -= 1
            }
        }
        .padding()
    }
    
    var carAdder: some View{
        Button {
            if cardCount < emojis.count {
                cardCount += 1
            }
        } label: {
            Image(systemName: "rectangle.stack.badge.plus.fill")
        }
        .padding()
        .font(.largeTitle)
    }
    
}

struct CardView: View{
    
    let content: String
    @State var isFaceUp: Bool = true
    
    var body: some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 5)
                Text(content).font(.largeTitle)
            }else{
                base
            }
        }
        .onTapGesture {
            print("tapped")
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
