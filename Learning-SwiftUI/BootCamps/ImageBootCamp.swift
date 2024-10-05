//
//  ImageBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 04/10/2024.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("FanImage")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 300, height: 300)
            .background(
                Circle()
                    .fill(Color.black)
                    .frame(width: 285)
            )
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
