//
//  SecondScreen.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/11/2024.
//

import SwiftUI

struct SeconddScreen: View {
    
    /*
     SINCE WE ARE IN THE SECOND SCREEN AND WE NEED TO USE THE VIEW MODEL
     SO WE WILL USE @OBSERVEDOBJECT
     */
    
    //@ObservedObject var fruitsViewModel: ViewModel
    var fruit: FruitsModel
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Image(fruit.fruitImage)
        }
    }
}

//struct SeconddScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SeconddScreen()
//    }
//}
