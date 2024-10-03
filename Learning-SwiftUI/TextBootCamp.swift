//
//  TextBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 02/10/2024.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.blue)
            //.strikethrough(true, color: Color.red)
            
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
