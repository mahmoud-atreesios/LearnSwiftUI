//
//  ContentView.swift
//  First
//
//  Created by Mahmoud Mohamed Atrees on 03/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["👻","🤡","💀","🎃"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices,id: \.self) { index in
                CardView(content:emojis[index])
            }
        }
        .padding()
        .foregroundColor(.blue)
        .frame(height: 130)
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
