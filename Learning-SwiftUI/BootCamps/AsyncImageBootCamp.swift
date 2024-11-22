//
//  AsyncImageBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 21/11/2024.
//

import SwiftUI

struct AsyncImageBootCamp: View {
    
    let url = URL(string: "https://apiv2.allsportsapi.com/logo/players/52515_cristiano-ronaldo.jpg")
    let niceWebsiteForDownloadingSizedImages = URL(string: "https://picsum.photos/200")
    
    var body: some View {
                VStack {
                    AsyncImage(url: niceWebsiteForDownloadingSizedImages) { returnedImage in
                        returnedImage
                            .resizable()
                            .frame(width: 300, height: 300)
                            .cornerRadius(10, corners: .allCorners)
                            .shadow(radius: 20)
                    } placeholder: {
                        ProgressView()
                    }

                    Text("Hello, World!")
                        .padding()
                        .bold()
                }
    }
}

struct AsyncImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootCamp()
    }
}


//        VStack{
//            AsyncImage(url: url) { phase in
//                switch phase{
//                case .empty:
//                    ProgressView()
//                case .success(let returnedImage):
//                    returnedImage
//                        .resizable()
//                        .frame(width: 300, height: 300)
//                        .cornerRadius(10, corners: .allCorners)
//                        .shadow(radius: 20)
//                case .failure():
//                    Image(systemName: "questionmark")
//                default:
//                    Image(systemName: "questionmark")
//                }
//            }
//        }
