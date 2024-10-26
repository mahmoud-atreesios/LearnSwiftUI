//
//  ForEachBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/10/2024.
//

import SwiftUI

struct ForEachBootCamp: View {
    
    let data: [Color] = [Color.yellow,Color.orange,Color.red]
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("My index number \(index)")
                Circle()
                    .fill(data[index])
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}

/*
 ZStack(){
     RoundedRectangle(cornerRadius: 10)
         .frame(width: 270,height: .infinity)
         .ignoresSafeArea(edges: .bottom)
         .foregroundColor(.white)
         .shadow(radius: 10)
         .overlay(alignment: .topTrailing) {
             Button {
        //         showSideMenu = false
             } label: {
                 Image(systemName: "arrow.left")
                     .foregroundColor(.gray)
                     .font(.title2)
                     .padding(25)
                     .bold()
             }
         }
         .overlay(alignment: .topLeading) {
             Text("Side Menu")
                 .font(.title)
                 .bold()
                 .padding()
         }
 }
 */


