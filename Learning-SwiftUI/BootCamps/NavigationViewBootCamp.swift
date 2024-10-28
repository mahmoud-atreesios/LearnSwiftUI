//
//  NavigationViewBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 27/10/2024.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 0){
                    ForEach(0..<8) { index in
                        NavigationLink {
                            SecondScreenView()
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: .infinity, height: 100)
                                .foregroundColor(.white)
                                .shadow(radius: 10)
                                .padding()
                                .overlay {
                                    HStack {
                                        Text("My Name is Mahmoud Mohamed Atrees,   I am an iOS software engineer.")
                                            .frame(width: .infinity, height: 100)
                                            .bold()
                                        Image(systemName: "arrowshape.forward.fill")
                                    }
                                    .padding(25)
                                }
                        }
                    }
                    .foregroundColor(Color.black)
                }
            }
            .navigationTitle("Navigation")
            .navigationBarItems(leading: Image(systemName: "person"), trailing: Image(systemName: "gear"))
        }
    }
}

struct SecondScreenView: View {
    
    @Environment(\.isPresented) var homePage
    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea(.all)
                .navigationTitle("SecondScreen")
                .bold()
            //.navigationBarBackButtonHidden()
            
        }
    }
}


struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
