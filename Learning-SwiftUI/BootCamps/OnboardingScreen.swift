//
//  OnboardingScreen.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 04/11/2024.
//

import SwiftUI

struct OnboardingScreen: View {
    
    @State var selectedPage: Int = 0
    @State var images = ["fourth","123","hhh","223"]
    @State var titles = ["Explore Recipes","Utilize LeftOvers","Share Recipes","Meal Schedule"]
    @State var subTitles = ["We provide recipes based on what you have on hand","Start with ingredients that you have in kitchen","You can invite your partner to cook with you","Build a meal plan to meet nutrition needs"]
    
    
    var body: some View {
        VStack {
            TabView(selection: $selectedPage) {
                ForEach(0..<titles.count, id: \.self) { index in
                    OnboardingScreenShape(selectedPage: $selectedPage,
                                          image: images[index],
                                          title: titles[index],
                                          subTitle: subTitles[index],
                                          pageIndex: index)
                    .tag(index)
                }
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
        }
    }
}




struct OnboardingScreenShape: View {
    
    @Binding var selectedPage: Int

    var image: String
    var title: String
    var subTitle: String
    var pageIndex: Int
        
    var body: some View {
        ZStack {
            
            Image(image)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            Rectangle()
                .fill(
                    LinearGradient(colors: [.black,.white.opacity(0)], startPoint: .bottom, endPoint: .center)
                )
                .ignoresSafeArea()
            
            Button {
                print("Skip Button pressed")
                selectedPage = 0
            } label: {
                HStack(spacing: 3) {
                    Text("Skip")
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.white)
                .bold()
            }
            .offset(x: 150, y: -370)
            
            VStack{
                Spacer()
                
                Text(title)
                    .font(.largeTitle)
                    .opacity(selectedPage == pageIndex ? 1 : 0)
                    .animation(.easeOut, value: selectedPage)

                
                Text(subTitle)
                    .font(.title2)
                    .opacity(selectedPage == pageIndex ? 1 : 0)
                    .animation(.easeOut, value: selectedPage)
                    .padding(.vertical,1)
                    .padding(.horizontal)
                    
                
            }
            .frame(width: UIScreen.main.bounds.width)
            .bold()
            .foregroundColor(.white)
            .padding(.vertical, 100)
        }
    }
}


struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
        //OnboardingScreenShape()
    }
}



