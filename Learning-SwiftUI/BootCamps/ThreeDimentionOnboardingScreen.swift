//
//  ThreeDimentionOnboardingScreen.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 05/12/2024.
//

import SwiftUI
import SplineRuntime

struct ThreeDimentionOnboardingScreen: View {
    var body: some View {
        VStack {
            ZStack {
                OnboardThreeDimensionScreen()
                    .frame(width: .infinity ,height: 500)
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 170, height: 50)
                    .offset(x: 108, y: 150)
                    .foregroundStyle(Color(red: 0.956, green: 0.941, blue: 0.937))
                
            }
            
            Text("First Onboard Screen")
                .font(.title)
                .bold()
                .padding(.vertical, 10)
            Text("Hello this is the first screen of the onboarding 3d screens hope it will be successful try")
                .font(.caption)
                .foregroundColor(.gray)
                .bold()
                .padding(.horizontal,70)
            
            Button("Next") {
                print("hello world")
            }
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(.red)
            .cornerRadius(10, corners: .allCorners)
            .padding(.vertical, 20)
            Spacer()
            
            
        }
    }
}

struct OnboardThreeDimensionScreen: View {
    var body: some View {

        let url = URL(string: "https://build.spline.design/iONtEvZ-tdchhL5JTfAK/scene.splineswift")!

        SplineView(sceneFileURL: url)
    }
}


#Preview {
    ThreeDimentionOnboardingScreen()
}
