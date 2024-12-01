//
//  NavigationStackBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 26/11/2024.
//

import SwiftUI

//MARK: - SHEET BOOTCAMP
struct NavigationStackBootCamp: View {
    
    @State var largeButtonSheet: Bool = false
    @State var mediumButtonSheet: Bool = false

    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack(spacing: 40){
                
                Button("Large Sheet") {
                    largeButtonSheet.toggle()
                }
                .sheet(isPresented: $largeButtonSheet) {
                    Text("Hello second screen")
                        .presentationDetents([.large])
                }
                
                Button("Medium Sheet") {
                    mediumButtonSheet.toggle()
                }
                .sheet(isPresented: $mediumButtonSheet) {
                    Text("Hello second screen")
                        .presentationDetents([.medium])
                        //.presentationDetents([.fraction(0.3),.medium,.large])
                }
            }
        }
    }
}

struct NavigationStackBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootCamp()
    }
}
