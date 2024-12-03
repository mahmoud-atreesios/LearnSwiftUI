//
//  CustomLoadingIndicator.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 03/12/2024.
//

import SwiftUI

struct CustomLoadingIndicator: View {
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    @State var count = 1
    
    var body: some View {
        ZStack {
            Image("ssecond")
                   .resizable()
                   .scaledToFill()
                   .ignoresSafeArea()
            
            //MARK: - SLIDE VIEW
            Rectangle()
                .ignoresSafeArea()
                .background(.ultraThinMaterial)
               
               TabView(selection: $count) {
                   RoundedRectangle(cornerRadius: 10)
                       .fill(Color.blue)
                       .tag(1)
                   RoundedRectangle(cornerRadius: 10)
                       .fill(Color.green)
                       .tag(2)
                   RoundedRectangle(cornerRadius: 10)
                       .fill(Color.red)
                       .tag(3)
                   RoundedRectangle(cornerRadius: 10)
                       .fill(Color.orange)
                       .tag(4)
                   RoundedRectangle(cornerRadius: 10)
                       .fill(Color.purple)
                       .tag(5)
                   RoundedRectangle(cornerRadius: 10)
                       .fill(Color.yellow)
                       .tag(6)
               }
               .frame(width: UIScreen.main.bounds.width - 20, height: 200)
               .tabViewStyle(.page)
            
            
            //MARK: - LOADING INDICATOR CIRCLE IN OUT
            /*
             HStack{
                 Circle()
                     .frame(width: count == 1 ? 20 : 10,height: 50)
                 Circle()
                     .frame(width: count == 2 ? 20 : 10,height: 50)
                 
                 Circle()
                     .frame(width: count == 3 ? 20 : 10,height: 50)
             }
             */
            
            //MARK: - LOADING INDICATOR UP ONLY
            /*
             HStack{
                 Circle()
                     .frame(width: 15,height: 50)
                     .offset(y: count == 1 ? -20 : 0)
                 Circle()
                     .frame(width: 15,height: 50)
                     .offset(y: count == 2 ? -20 : 0)
                 
                 Circle()
                     .frame(width: 15,height: 50)
                     .offset(y: count == 3 ? -20 : 0)
             }
             */
            
            //MARK: - LOADING INDICATOR UP AND DOWN
            /*
             HStack{
             Circle()
             .frame(width: 15,height: 50)
             .offset(y: count == 1 ? -20 : 0)
             .offset(y: count == 2 ? 20 : 0)
             Circle()
             .frame(width: 15,height: 50)
             .offset(y: count == 3 ? -20 : 0)
             .offset(y: count == 4 ? 20 : 0)
             
             Circle()
             .frame(width: 15,height: 50)
             .offset(y: count == 5 ? -20 : 0)
             .offset(y: count == 6 ? 20 : 0)
             
             }
             */
            
            //.foregroundColor(.gray)
        }
        .onReceive(timer) { value in
            
            withAnimation(.default){
                count = count == 6 ? 0 : count + 1
            }
            
            // ON RECEIVE FOR LOADING INDICATOR CIRCLE IN OUT
            /*
            withAnimation(.easeInOut(duration: 0.3)){
                count = count == 3 ? 0 : count + 1
            }
             */
            
            //ON RECEIVE FOR LOADING INDICATOR UP ONLY
            /*
             .onReceive(timer) { value in
             withAnimation(.easeInOut(duration: 0.3)){
             count = count == 3 ? 0 : count + 1
             }
             */
            
            //ON RECEIVE FOR LOADING INDICATOR UP AND DOWN
            /*
             .onReceive(timer) { value in
             withAnimation(.easeInOut(duration: 0.3)){
             count = count == 6 ? 0 : count + 1
             }
             */
        }
    }
}

struct CustomLoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoadingIndicator()
    }
}
