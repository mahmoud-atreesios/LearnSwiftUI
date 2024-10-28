//
//  SideMenuTutorialByMe.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 26/10/2024.
//

import SwiftUI

struct SideMenuTutorialByMe: View {
    
    @State var showSideMenu = false
    @State private var showButton = true
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(red: 74/255, green: 98/255, blue: 138/255)
                .ignoresSafeArea()
            
            ZStack(alignment: .topLeading) {
                if showButton{
                    Button {
                        showSideMenu.toggle()
                    } label: {
                        Image(systemName: "text.justify")
                            .foregroundColor(.black)
                            .font(.title)
                            .padding()
                            .bold()
                    }
                }
                
                if showSideMenu{
                    SideMenu(showSideMenu: $showSideMenu,
                             backIcon: "arrow.left",
                             backgroundColor: Color.cyan,
                             sideMenuTitleName: "My Title")
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
                        .animation(.easeOut)
                        .offset(x:-10)
//                        .onAppear {
//                            showButton = false
//                        }
//                        .onDisappear {
//                            showButton = true
//                        }
                }
            }
        }
    }
}

struct SideMenu: View {
    
    @Binding var showSideMenu: Bool
    var backIcon: String
    var backgroundColor: Color
    var sideMenuTitleName: String
    
    var body: some View {
        sideMenu
    }
    
    var sideMenu: some View{
        ZStack(){
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 270,height: .infinity)
                .ignoresSafeArea(edges: .bottom)
                .foregroundColor(backgroundColor)
                .shadow(radius: 10)
                .overlay(alignment: .topTrailing) {
                    Button {
                        showSideMenu = false
                    } label: {
                        Image(systemName: backIcon)
                            .foregroundColor(.gray)
                            .font(.title2)
                            .padding(25)
                            .bold()
                    }
                }
                .overlay(alignment: .topLeading) {
                    Text(sideMenuTitleName)
                        .font(.title)
                        .bold()
                        .padding()
                }
            
            VStack{
                ForEach(0..<9) { index in
                    Button {
                        print("")
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 60)
                            .foregroundColor(.white)
                            .shadow(radius: 5).opacity(0.2)
                            .overlay {
                                Text("Home")
                                    .foregroundColor(.gray)
                                    .bold()
                                    .fontDesign(.serif)
                                    .padding()
                            }
                    }
                }
            }
        }
    }
}

struct SideMenuTutorialByMe_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuTutorialByMe()
        //SideMenu()
    }
}


//arrow.left
