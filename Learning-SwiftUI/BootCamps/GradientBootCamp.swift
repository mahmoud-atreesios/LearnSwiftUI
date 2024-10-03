//
//  GradientBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 03/10/2024.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.cyan,Color.cyan.opacity(0.2)]), startPoint: .leading, endPoint: .trailing)
//                RadialGradient(gradient: Gradient(colors: [Color.cyan,Color.cyan.opacity(0.2)]),
//                               center: .topLeading,
//                               startRadius: 5,
//                               endRadius: 400)
                AngularGradient(gradient: Gradient(colors: [Color.cyan,Color.cyan.opacity(0.2)]),
                                center: .topLeading,
                                angle: .degrees(180 + 45))
            )
            //.foregroundColor(.cyan)
            .frame(width: 300, height: 200)
    }
}

struct GradientBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootCamp()
    }
}
