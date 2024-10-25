//
//  AnimationTimingBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 24/10/2024.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    
    @State var isAnimated = false
    let timing = 10.0
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 80)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 1.0))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 80)
//                .animation(.default)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 80)
//                .animation(.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 80)
//                .animation(.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 80)
//                .animation(.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 80)
//                .animation(.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}
