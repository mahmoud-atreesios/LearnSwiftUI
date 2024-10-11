//
//  ForEachBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 11/10/2024.
//

import SwiftUI

struct ForEachBootCamp: View {
    
    let data: [Color] = [Color.yellow,Color.orange,Color.red]
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("My index number \(index)")
                Circle()
                    .fill(data[index])
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
