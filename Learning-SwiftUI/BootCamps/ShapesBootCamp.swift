//
//  ShapesBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 03/10/2024.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        //RoundedRectangle(cornerRadius: 10)
        //Rectangle()
        //Capsule(style: .circular)
        //Ellipse()
        Circle()
            .fill(Color.yellow)
            .foregroundColor(.cyan)
            //.stroke(Color.red,lineWidth: 20)
            //.stroke(Color.cyan, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [50]))
            //.trim(from: 0.2, to: 1)
//            .stroke(Color.cyan, lineWidth: 3)
//            .frame(width: 370, height: 70)
    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
//dkdkdk
