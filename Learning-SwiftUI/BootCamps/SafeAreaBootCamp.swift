//
//  SafeAreaBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 22/10/2024.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        ScrollView {
            Text("Hello, World!")
                .font(.largeTitle)
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
                .padding(5)
            
            ForEach(0..<12) { index in
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 150)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .padding()
            }
        }
        .background(
            Color.yellow
//                .ignoresSafeArea(edges: .all)
        )
    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
