//
//  SpacerBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 09/10/2024.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        VStack {
            HStack {
                Text("Dashboard")
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "person.circle")
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)
                Image(systemName: "bell.badge")
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)
            }
            .padding()
            //.background(.blue)
            Spacer()
        }
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
