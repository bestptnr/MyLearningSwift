//
//  TransitionBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                Button(action: {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                }, label: {
                    Text("Button")
                })
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}


#Preview {
    TransitionBootcamp()
}
