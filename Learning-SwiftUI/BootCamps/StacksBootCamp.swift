//
//  StacksBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 05/10/2024.
//

import SwiftUI

struct StacksBootCamp: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 8){
                Text("Arsenal vs ManCity")
                    .font(.callout)
            HStack{
                Image(systemName: "clock.circle")
                    .resizable()
                    .foregroundColor(Color(.sRGBLinear, red: 0.043137254901960784, green: 0.09803921568627451, blue: 0.17254901960784313))
                    .frame(width: 25, height: 25)
                Text("1:30")
                    .font(.caption)
            }
            HStack{
                Image(systemName: "calendar.circle")
                    .resizable()
                    .foregroundColor(Color(.sRGBLinear, red: 0.043137254901960784, green: 0.09803921568627451, blue: 0.17254901960784313))
                    .frame(width: 25, height: 25)
                Text("2024-12-12")
                    .font(.caption)
            }
            HStack{
                Image(systemName: "location.circle")
                    .resizable()
                    .foregroundColor(Color(.sRGBLinear, red: 0.043137254901960784, green: 0.09803921568627451, blue: 0.17254901960784313))
                    .frame(width: 25, height: 25)
                Text("Cairo Stadium")
                    .font(.caption)
            }
        }
        .bold()
        
//        VStack(alignment: .center, spacing: 5) {
//            Text("5")
//                .font(.title)
//                .underline()
//                .bold()
//            Text("items in your carts")
//                .foregroundColor(.gray)
//                .font(.caption)
//        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
