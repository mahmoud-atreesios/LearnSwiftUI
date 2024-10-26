//
//  ScrollViewBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/10/2024.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        VStack() {
//            Text("FanZone")
//                .font(.title)
//                .bold()
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
