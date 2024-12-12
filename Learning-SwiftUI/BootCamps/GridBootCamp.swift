////
////  GridBootCamp.swift
////  Learning-SwiftUI
////
////  Created by Mahmoud Mohamed Atrees on 12/10/2024.
////
//
//import SwiftUI
//
//struct GridBootCamp: View {
//    
//    let coloumns:[GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]
//    
//    var body: some View {
//        ScrollView {
//            
//            Image("EtihadStadium")
//                .resizable()
//                .scaledToFill()
//                .frame(width: 400,height: 400)
//            
//            LazyVGrid(columns: coloumns, alignment: .center, spacing: nil, pinnedViews: [.sectionHeaders]) {
//                Section {
//                    ForEach(0..<20) { index in
//                        Rectangle()
//                            .frame(height: 150)
//                            //.padding(.horizontal,5)
//                    }
//                } header: {
//                    Text("Section 1")
//                        .font(.title)
//                        .bold()
//                        .fixedSize()
//                        .padding(.horizontal)
//                        .background(
//                            RoundedRectangle(cornerRadius: 20)
//                                .fill(.white)
//                                .shadow(radius: 10)
//                        )
//                }
//                Section {
//                    ForEach(0..<20) { index in
//                        Rectangle()
//                            .frame(height: 150)
//                            .foregroundColor(.gray)
//                    }
//                } header: {
//                    Text("Section 2")
//                        .font(.title)
//                        .bold()
//                        .fixedSize()
//                        .padding(.horizontal)
//                        .background(
//                            RoundedRectangle(cornerRadius: 20)
//                                .fill(.white)
//                                .shadow(radius: 10)
//                        )
//                }
//            }
//        }
//    }
//}
//
//struct GridBootCamp_Previews: PreviewProvider {
//    static var previews: some View {
//        GridBootCamp()
//    }
//}
