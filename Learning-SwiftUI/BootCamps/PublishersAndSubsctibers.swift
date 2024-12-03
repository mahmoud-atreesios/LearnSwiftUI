//
//  PublishersAndSubsctibers.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 03/12/2024.
//

import SwiftUI
import Combine

class TextFieldViewModel: ObservableObject{
    @Published var textFieldText = ""
    @Published var isValidTextField = false
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addTextFieldSubscriber()
    }
    
    func addTextFieldSubscriber(){
        $textFieldText
            .debounce(for: 0.5, scheduler: DispatchQueue.main)
            .map { (text) -> Bool in
                if text.count > 3 {
                    return true
                }
                return false
            }
            .sink { [weak self] isValid in
                self?.isValidTextField = isValid
            }
            .store(in: &cancellables)
    }
    
}

struct PublishersAndSubsctibers: View {
    
    @StateObject var viewModel = TextFieldViewModel()
    
    var body: some View {
        
        ZStack {
            TextField("Type Something...", text: $viewModel.textFieldText)
                .padding(.leading)
                .frame(height: 50)
                .background(.white)
                .cornerRadius(10, corners: .allCorners)
                .shadow(radius: 10)
            
            HStack {
                Spacer()
                ZStack{
                    Image(systemName: "xmark")
                        .foregroundColor(.red)
                        .bold()
                        .font(.title2)
                        .opacity(
                            viewModel.textFieldText.count == 0 ? 0 :
                            viewModel.isValidTextField ? 0 : 1
                        )
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                        .bold()
                        .font(.title2)
                        .opacity(viewModel.isValidTextField ? 1 : 0)
                }
            }
            .padding(.trailing)
        }
        .padding()
    }
}

struct PublishersAndSubsctibers_Previews: PreviewProvider {
    static var previews: some View {
        PublishersAndSubsctibers()
    }
}
