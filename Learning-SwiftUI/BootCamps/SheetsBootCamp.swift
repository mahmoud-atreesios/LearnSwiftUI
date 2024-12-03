//
//  SheetsBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 25/10/2024.
//

import SwiftUI

struct SheetsBootCamp: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .frame(width: 130, height: 50)
            .background(Color.yellow)
            .cornerRadius(15)
            .foregroundColor(.white)
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismissSheet
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            Button {
                dismissSheet()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.black)
            }
        }
    }
}

struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootCamp()
        //SecondScreen()
    }
}
