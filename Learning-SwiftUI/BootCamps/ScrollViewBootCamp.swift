//
//  ScrollViewBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/10/2024.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    
    @State var showSideMenu = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack() {
                HStack{
                    Button {
                        showSideMenu.toggle()
                    } label: {
                        Image(systemName: "text.justify")
                            .foregroundColor(.black)
                            .font(.title)
                            .padding()
                            .bold()
                    }
                    
                    Spacer()
                    Text("FanZone")
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(systemName: "person")
                        .foregroundColor(.black)
                        .font(.title)
                        .padding()
                        .bold()
                }
                ScrollView {
                    ForEach(0..<30) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .shadow(radius: 5)
                            .padding(.horizontal)
                            .frame(height: 150)
                            .overlay {
                                HStack(alignment: .top, spacing: 2) {
                                    Image("EtihadStadium")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .bottomLeft]))
                                        .padding(.horizontal)
                                    StacksBootCamp()
                                        .padding(.vertical)
                                    Spacer()
                                }
                            }
                    }
                    .padding()
                }
            }
            ZStack(alignment: .topLeading){
                if showSideMenu{
                    SideMenu(showSideMenu: $showSideMenu)
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
                        .animation(.easeOut)
                        .offset(x:-10)
                }
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}


struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
