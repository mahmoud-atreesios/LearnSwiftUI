//
//  PaddingBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 08/10/2024.
//

import SwiftUI

struct PaddingBootCamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 10)
            Text("My name is Mahmoud Mohamed Atrees, I am an iOS developer who is seeking to learn and SwiftUI to gain more experiance in the mobile.")
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.7), radius: 5, x: 0, y: 0)
        )
    }
}

struct PaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootCamp()
    }
}
