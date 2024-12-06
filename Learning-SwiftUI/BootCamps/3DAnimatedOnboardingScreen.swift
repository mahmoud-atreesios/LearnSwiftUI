//
//  3DAnimatedOnboardingScreen.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 04/12/2024.
//

import SwiftUI
import SplineRuntime

struct _DAnimatedOnboardingScreen: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 500)
                .ignoresSafeArea()
                .foregroundColor(.gray)
            
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

struct _DAnimatedOnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        _DAnimatedOnboardingScreen()
    }
}

struct Onboard3dScreen: View {
    var body: some View {

        let url = URL(string: "https://build.spline.design/iONtEvZ-tdchhL5JTfAK/scene.splineswift")!

        SplineView(sceneFileURL: url)
    }
}
