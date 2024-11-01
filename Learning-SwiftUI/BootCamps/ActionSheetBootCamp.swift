//
//  ActionSheetBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 01/11/2024.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    
    @State var showActionSheet = false
    @State var actionSheetOption: ActionSheetOptions = .isOthersPost
    @State var storyImages = ["2","FanImage","Profile","2","FanImage","Profile","2","FanImage","Profile","Profile","2","FanImage","Profile"]
    
    @State var heartImageFill: String? = "heart.fill"
    @State var heartImageUnfill: String? = "heart"
    @State var heartColor:Color? = Color.red
    
    @State var quoteImageFill: String? = "quote.bubble.fill"
    @State var quoteImageUnfill: String? = "quote.bubble"
    @State var quoteColor:Color? = Color.black
    
    @State var paperPlaneImageFill: String? = "paperplane.fill"
    @State var paperPlaneImageUnfill: String? = "paperplane"
    @State var paperPlaneColor:Color? = Color.black
    
    @State var bookmarkImageFill: String? = "bookmark.fill"
    @State var bookmarkImageUnfill: String? = "bookmark"
    @State var bookmarkColor:Color? = Color.gray
    
    enum ActionSheetOptions{
        case isMyPost
        case isOthersPost
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                ScrollView(.horizontal){
                    HStack{
                        ForEach(storyImages, id: \.self) { index in
                            Image(index)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(50, corners: .allCorners)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color(red: 175 / 255, green: 23 / 255, blue: 64 / 255), lineWidth: 2)
                                )
                        }
                    }
                }
                .padding()
                ScrollView{
                    ForEach(0..<6) { index in
                        VStack {
                            HStack{
                                Image("FanImage")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10, corners: .allCorners)
                                Text("@username")
                                Spacer()
                                Button {
                                    actionSheetOption = .isMyPost
                                    showActionSheet.toggle()
                                } label: {
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.black)
                                        .frame(width: 30, height: 30)
                                }
                            }
                            .padding(.horizontal)
                            Image("2")
                                .resizable()
                                .aspectRatio(1.0, contentMode: .fit)
                            HStack{
                                AddButtonsBootCamp(imageFill: self.$heartImageFill,
                                                   imageUnfill: self.$heartImageUnfill,
                                                   color: self.$heartColor)
                                
                                AddButtonsBootCamp(imageFill: self.$quoteImageFill,
                                                   imageUnfill: self.$quoteImageUnfill,
                                                   color: self.$quoteColor)
                                
                                AddButtonsBootCamp(imageFill: self.$paperPlaneImageFill,
                                                   imageUnfill: self.$paperPlaneImageUnfill,
                                                   color: self.$paperPlaneColor)
                                Spacer()
                                AddButtonsBootCamp(imageFill: self.$bookmarkImageFill,
                                                   imageUnfill: self.$bookmarkImageUnfill,
                                                   color: self.$bookmarkColor)
                            }
                            .padding(.horizontal)
                        }
                        .padding(.vertical)
                    }
                }
                .actionSheet(isPresented: $showActionSheet, content: actionSheet)
            }
        }
    }
    
    func actionSheet() -> ActionSheet{
        
        let shareButton: ActionSheet.Button = .default(Text("Share"))
        let reportButton: ActionSheet.Button = .destructive(Text("Report"))
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete"))
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like?")

        switch actionSheetOption {
        case .isOthersPost:
            return ActionSheet(title: title,
                        message: nil,
                        buttons: [shareButton,reportButton,cancelButton])
        case .isMyPost:
            return ActionSheet(title: title,
                        message: nil,
                        buttons: [shareButton,reportButton,deleteButton,cancelButton])
        }
        
//        var button1: ActionSheet.Button = .cancel()
//        var button2: ActionSheet.Button = .destructive(Text("shut your mouth"))
//        var button3: ActionSheet.Button = .default(Text("shut your mouth"))
//
//        return ActionSheet(title: Text("I don't want to enter military"),
//                           message: Text("because i want to start working and make money."),
//                           buttons: [button1,button2,button3])
    }
    
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
