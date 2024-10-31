//
//  AlertBootCamp.swift
//  Learning-SwiftUI
//
//  Created by Mahmoud Mohamed Atrees on 31/10/2024.
//

import SwiftUI

struct AlertBootCamp: View {
    
    @State var showAlertt = true
    //@State var title = ""
    //@State var message = ""
    @State var alerttype: MyAlerts?
    
    enum MyAlerts{
        case error
        case success
    }
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                Button("Button 1") {
                    alerttype = .error
    //                title = "Button 1 pressed! 🤮"
    //                message = "this is the description of the alert."
                    showAlertt.toggle()
                }
                
                Button("Button 2") {
                    alerttype = .success
    //                title = "Button 1 pressed! 🤮"
    //                message = "this is the description of the alert."
                    showAlertt.toggle()
                }
            }
            
            .alert(isPresented: $showAlertt) {
                showAlert()
            }
        }
    }
    
    func showAlert() -> Alert{
        
        switch alerttype {
        case .error:
            return Alert(title: Text("Error case is shown"))
        case .success:
            return Alert(title: Text("success case is shown"))
        default:
            return Alert(title: Text("ERRRRRR"))
        }
        
        //return Alert(title: Text(title), message: Text(message), dismissButton: .cancel())
    }
    
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
