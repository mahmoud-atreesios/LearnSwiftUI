//
//  MenuBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 27/11/2024.
//

import SwiftUI

struct MenuBootCamp: View {
    var body: some View {
        Menu("Click me") {
            Button("One") {
                print("")
            }
            Button("One") {
                print("")
            }
            Button("One") {
                print("")
            }
        }
    }
}

struct MenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootCamp()
    }
}
