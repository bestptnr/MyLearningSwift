//
//  AlertBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 6/5/2567 BE.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert       : Bool       = false
    @State var backgroundColor : Color      = .yellow
    @State var alertType       : MyAlerts?  = nil
    @State var alertTitle      : String     = ""
    @State var alertMessage    : String     = ""

    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack {
                Button(action: {
                    alertType = .success
//                    alertTitle = "Error uploading video."
//                    alertMessage = "The video cloud not be uploaded."
                    showAlert.toggle()
                }, label: {
                    Text("Button 1")
                })
                Button(action: {
                    alertType = .error
//                    alertTitle = "Successfully uploaded video."
//                    alertMessage = "Your video is now publish"
                    showAlert.toggle()
                }, label: {
                    Text("Button 2")
                })
            }
            .alert(isPresented: $showAlert) {
                    getAlert()
            }
        }
        
    }
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("There was an error!"))
        case .error:
            return Alert(title: Text("There was an success!"),message: nil,dismissButton: .default(Text("Ok"),action: {
                backgroundColor = .green
            }))
        case nil:
            return Alert(title: Text("Error!!!!"))

        }
    }
}

#Preview {
    AlertBootcamp()
}
