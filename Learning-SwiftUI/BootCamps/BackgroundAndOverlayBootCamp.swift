//
//  BackgroundAndOverlayBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 04/10/2024.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
        
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundColor(.white)
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .frame(width: 80, height: 80)
                    .overlay {
                        Text("f")
                            .frame(width: 100, height: 100,alignment: .top)
                            .font(.system(size: 100))
                            .bold()
                            .foregroundColor(.white)
                            .fontDesign(.rounded)
                            .scaledToFill()
                    }
            }
            .overlay(alignment: .topTrailing, content: {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                    .overlay {
                        Text("3")
                            .foregroundColor(.white)
                            //.font(.caption)
                            .bold()
                    }
            })

        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay {
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            }
//            .background(
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
//        Text("Hello, World!")
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
//                //ColorsBootCamp()
//                //Color.red
//                //LinearGradient(colors: [Color.red,Color.green], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(Color.cyan)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill()
//            )
    }
}

struct BackgroundAndOverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootCamp()
    }
}
