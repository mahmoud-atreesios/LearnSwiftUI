//
//  StacksBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 05/10/2024.
//

import SwiftUI

struct StacksBootCamp: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("5")
                .font(.title)
                .underline()
                .bold()
            Text("items in your carts")
                .foregroundColor(.gray)
                .font(.caption)
        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
