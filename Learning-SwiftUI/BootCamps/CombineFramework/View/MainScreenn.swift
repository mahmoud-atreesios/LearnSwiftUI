//
//  MainScreen.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 02/12/2024.
//

import SwiftUI

struct MainScreenn: View {
    
    @StateObject var viewModel = DownloadJsonDataUsingCombineViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical)
                    Text(post.body)
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct MainScreenn_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenn()
    }
}
