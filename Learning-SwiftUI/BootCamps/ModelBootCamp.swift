//
//  ModelBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 10/11/2024.
//

import SwiftUI

struct UserModel: Identifiable{
    var id: String = UUID().uuidString
    var name: String
    var userName: String
    var followerCount: Int
    var image: String
    var isVerfied: Bool
}

struct ModelBootCamp: View {
    
    @State var users = [
        UserModel(name: "Mahmoud", userName: "mahmoudatrees", followerCount: 78, image: "2", isVerfied: true),
        UserModel(name: "Atrees", userName: "mahmoudatrees43", followerCount: 33, image: "Profile", isVerfied:true),
        UserModel(name: "Ahmed", userName: "ahmed673", followerCount: 548, image: "FanImage", isVerfied: false),
        UserModel(name: "Ali", userName: "mahmoudat322", followerCount: 900, image: "2", isVerfied: true),
        UserModel(name: "Kareem", userName: "mahmo3324rees", followerCount: 27, image: "FanImage", isVerfied: false),
        UserModel(name: "Atrees", userName: "mahmoudatrees43", followerCount: 33, image: "Profile", isVerfied: true),
        UserModel(name: "Atrees", userName: "mahmoudatrees43", followerCount: 33, image: "Profile", isVerfied: true)
    ]
    
    var body: some View {
        NavigationStack{
            
            List{
                ForEach(users) { user in
                    HStack {
                        Image(user.image)
                            .resizable()
                            .frame(width: 60,height: 60)
                            .cornerRadius(25, corners: .allCorners)
                        VStack(alignment: .leading){
                            Text(user.name)
                                .bold()
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        HStack {
                            if user.isVerfied{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                            }
                            VStack {
                                Text("\(user.followerCount)")
                                    .bold()
                                Text("Followers")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                        }
                    }
                }
                .navigationTitle("Users")
            }
        }
    }
    
}
struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}
