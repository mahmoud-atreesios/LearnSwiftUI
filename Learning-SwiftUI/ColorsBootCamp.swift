//
//  ColorsBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 03/10/2024.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            //.stroke(lineWidth: 5)
            //.foregroundColor(.cyan)
            .foregroundColor(Color("customColor"))
            .frame(width: 300, height: 200)
    }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
    }
}
