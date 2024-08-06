//
//  ContentView.swift
//  First
//
//  Created by Mahmoud Mohamed Atrees on 03/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
         CardView(isFaceUp: true)
         CardView()
        }
        .padding()
        .foregroundColor(.blue)
        .frame(height: 200)
    }
}

struct CardView: View{
    
    var isFaceUp: Bool = false
    
    var body: some View{
        if isFaceUp{
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 5)
                Text("👻")
            }
        }else{
            RoundedRectangle(cornerRadius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
