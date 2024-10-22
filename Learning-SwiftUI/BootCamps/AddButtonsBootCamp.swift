//
//  AddButtonsBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 22/10/2024.
//

import SwiftUI

struct AddButtonsBootCamp: View {
    
    @State var title = "Button pressed"
    @State var image = "heart"
    @State var toggle = false
    
    var body: some View {
        VStack {
            Text(self.title)
            
            Button {
                self.title = "Button 1# pressed"
                
                if toggle == false {
                    self.image = "heart.fill"
                    self.toggle = true
                }else{
                    self.image = "heart"
                    self.toggle = false
                }
                
                
            } label: {
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
        }
    }
}

struct AddButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonsBootCamp()
    }
}
