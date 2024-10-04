//
//  FrameBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 04/10/2024.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            .frame(maxWidth: .infinity, alignment: .leading)
            //.frame(width: 300, height: 300, alignment: .topLeading)
            //.background(Color.red)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
