//
//  AddButtonsBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 22/10/2024.
//

import SwiftUI

struct AddButtonsBootCamp: View {
    
    @State var title = "Likes 0"
    @State var image = "heart"
    @State var toggle = false
    
    var body: some View {
        VStack {
            Button {
                likeButtonPressed()
            } label: {
                imageButtonView
            }
            Text(self.title)
        }
    }
    
    var imageButtonView: some View{
        Circle()
            .fill(.white)
            .frame(width: 60, height: 60)
            .shadow(radius: 10)
            .overlay {
                Image(systemName: image)
                    .foregroundColor(.red)
                    .font(.title)
            }
    }
    
    func likeButtonPressed(){
        if toggle == false {
            self.title = "Likes 1"
            self.image = "heart.fill"
            self.toggle.toggle()
        }else{
            self.title = "Likes 0"
            self.image = "heart"
            self.toggle.toggle()
        }
    }
    
}

struct AddButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonsBootCamp()
    }
}
