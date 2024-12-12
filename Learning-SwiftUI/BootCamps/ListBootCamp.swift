////
////  ListBootCamp.swift
////  Learning-SwiftUI
////
////  Created by Mahmoud Mohamed Atrees on 28/10/2024.
////
//
//import SwiftUI
//
//struct ListBootCamp: View {
//    
//    @State var fruitsImage = ["apple","banana","peach","orange"]
//    @State var VeggiesImage = ["tomato","lettuce","cucumber","carrots"]
//    
//    
//    var body: some View {
//        NavigationStack{
//            List {
//                //MARK: - Fruits Section
//                Section {
//                    ForEach(fruitsImage, id: \.self) { index in
//                        RoundedRectangle(cornerRadius: 10)
//                            .frame(width: .infinity, height: 80)
//                            .foregroundColor(Color(red: 185 / 255, green: 229 / 255, blue: 232 / 255))
//                            .listRowBackground(Color(red: 185 / 255, green: 229 / 255, blue: 232 / 255))
//                            .overlay {
//                                HStack(){
//                                    Image(index)
//                                        .resizable()
//                                        .scaledToFill()
//                                        .frame(width: 100, height: 80)
//                                    
//                                    Text(index.capitalized)
//                                        .font(.title)
//                                        .bold()
//                                    
//                                }
//                            }
//                    }
//                    .onDelete(perform: deleteFruits)
//                    .onMove(perform: moveFruits)
//                } header: {
//                    Text("Fruits")
//                        .font(.title3)
//                        .bold()
//                }
//                
//                //MARK: - Veggies Section
//                Section {
//                    ForEach(VeggiesImage, id: \.self) { index in
//                        RoundedRectangle(cornerRadius: 10)
//                            .frame(width: .infinity, height: 80)
//                            .foregroundColor(Color(red: 185 / 255, green: 229 / 255, blue: 232 / 255))
//                            .listRowBackground(Color(red: 185 / 255, green: 229 / 255, blue: 232 / 255))
//                            .overlay {
//                                HStack(){
//                                    Image(index)
//                                        .resizable()
//                                        .scaledToFill()
//                                        .frame(width: 100, height: 80)
//                                    
//                                    Text(index.capitalized)
//                                        .font(.title)
//                                        .bold()
//                                    
//                                }
//                            }
//                    }
//                    .onDelete(perform: deleteVeggies)
//                    .onMove(perform: moveVeggies)
//                } header: {
//                    Text("Veggies")
//                        .font(.title3)
//                        .bold()
//                }
//            }
//            .navigationTitle("Grocery List")
//            .navigationBarItems(leading: Image(systemName: "person"), trailing: EditButton())
//            .accentColor(.black)
//        }
//    }
//    
//    func deleteVeggies(indexSet: IndexSet){
//        VeggiesImage.remove(atOffsets: indexSet)
//    }
//    func deleteFruits(indexSet: IndexSet){
//        fruitsImage.remove(atOffsets: indexSet)
//    }
//    
//    func moveVeggies(indexSet: IndexSet, to: Int){
//        VeggiesImage.move(fromOffsets: indexSet, toOffset: to)
//    }
//    
//    func moveFruits(indexSet: IndexSet, to: Int){
//        fruitsImage.move(fromOffsets: indexSet, toOffset: to)
//    }
//    
//}
//
//struct ListBootCamp_Previews: PreviewProvider {
//    static var previews: some View {
//        ListBootCamp()
//    }
//}
