//
//  SwipeActionBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 23/11/2024.
//

import SwiftUI

struct SwipeActionBootCamp: View {
    
    @State var fruits = ["apple","banana","peach","watermelon"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {index in
                Text(index.capitalized)
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Button") {
                            print("sth")
                        }
                        .tint(.green)
                        Button("Button") {
                            print("sth")
                        }
                        .tint(.blue)
                        Button("Button") {
                            print("sth")
                        }
                        .tint(.black)
                    }
            }
            .onDelete { index in
                print("")
            }
        }
    }
}

struct SwipeActionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionBootCamp()
    }
}
