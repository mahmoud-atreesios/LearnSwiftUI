//
//  SomeNewModifiersBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 22/11/2024.
//

import SwiftUI

struct SomeNewModifiersBootCamp: View {
    var body: some View {
        VStack {
            Button("Save Button") {
                print("")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Save Button") {
                print("")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            Button("Save Button") {
                print("")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            Button("Save Button") {
                print("")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
        }
        .font(.headline)
    }
}

struct SomeNewModifiersBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SomeNewModifiersBootCamp()
    }
}
