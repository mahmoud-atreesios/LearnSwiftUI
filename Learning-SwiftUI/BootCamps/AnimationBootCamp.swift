//
//  AnimationBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 23/10/2024.
//

import SwiftUI

struct AnimationBootCamp: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(.default){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 40 : 20)
                .fill(isAnimated ? Color.yellow : Color.cyan)
                .frame(width: isAnimated ? 50 : 200
                       , height: isAnimated ? 50 : 200)
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
