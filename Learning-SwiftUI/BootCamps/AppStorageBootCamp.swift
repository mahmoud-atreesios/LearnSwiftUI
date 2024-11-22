//
//  AppStorageBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 20/11/2024.
//

//MARK: - APP STORAGE IS THE SAME AS USER DEFAULT THEY MADE THE SAME THING WHICH IS STORING SMALL DATA ON THE DEVICE ALTHOUGH APP STORAGE IS MORE SIMPLER THAN USER DEFUALT

import SwiftUI

struct AppStorageBootCamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack{
            if let name = currentUserName{
                Text(name)
            }else{
                Text("Add your name here...")
            }
            
            Button {
                currentUserName = "Kareem Loai"
            } label: {
                Text("Save button")
            }
            .padding()
        }
        
    }
}
struct AppStorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootCamp()
    }
}
