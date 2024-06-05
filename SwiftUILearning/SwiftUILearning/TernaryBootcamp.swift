//
//  TernaryBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState : Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                isStartingState.toggle()
            }, label: {
                Text("Button : \(isStartingState.description)")
            })
            
        
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
       
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
