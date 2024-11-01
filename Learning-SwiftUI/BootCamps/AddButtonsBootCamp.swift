//
//  AddButtonsBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 22/10/2024.
//

import SwiftUI

struct AddButtonsBootCamp: View {
    
    @Binding var imageFill: String?
    @Binding var imageUnfill: String?
    @Binding var color: Color?
    
    @State var title = "Likes 0"
    @State var toggle = false
    
    var body: some View {
        VStack {
            Button {
                likeButtonPressed(imageFill: imageFill!, imageUnfill: imageUnfill!)
            } label: {
                imageButtonView
            }
//            Text(self.title)
//                .frame(width: 50, height: 5)
//                .font(.caption2)
        }
    }
    
    var imageButtonView: some View{
        Circle()
            .fill(.white)
            .frame(width: 30, height: 30)
            .shadow(radius: 10)
            .overlay {
                Image(systemName: toggle ? imageFill ?? "" : imageUnfill ?? "")
                    .foregroundColor(color ?? .blue)
                    .font(.title3)
            }
    }
    
    func likeButtonPressed(imageFill: String, imageUnfill: String){
        if toggle == false {
            self.title = "Likes 1"
            self.imageFill = imageFill
            self.toggle.toggle()
        }else{
            self.title = "Likes 0"
            self.imageUnfill = imageUnfill
            self.toggle.toggle()
        }
    }
    
}

struct AddButtonsBootCamp_Previews: PreviewProvider {
    @State static var imageFill: String? = "heart.fill"
    @State static var imageUnfill: String? = "heart"
    @State static var color:Color? = Color.red
    
    static var previews: some View {
        AddButtonsBootCamp(imageFill: $imageFill, imageUnfill: $imageUnfill, color: $color)
    }
}

