//
//  SystemIconBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 04/10/2024.
//

import SwiftUI

struct SystemIconBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.resizable()
            //.scaledToFit()
            //.scaledToFill()
            //.aspectRatio(contentMode: .fit)
            .font(.largeTitle)
            //.font(.system(size: 50))
            //.foregroundColor(.cyan)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

struct SystemIconBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconBootCamp()
    }
}
