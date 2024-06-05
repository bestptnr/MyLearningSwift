//
//  ConditionBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct ConditionBootcamp: View {
    
    @State var showCricle       : Bool    = false
    @State var showRectangle    : Bool    = false

    var body: some View {
        VStack(spacing:20){
            
            Button(action: {
                showCricle.toggle()
            }, label: {
                Text("Circle Button : \(showCricle.description)")
            })
            Button(action: {
                showRectangle.toggle()
            }, label: {
                Text("Rectangle Button : \(showRectangle.description)")
            })
            if showCricle {
                Circle()
                    .frame(width: 100,height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100,height: 100)
            } 
            if !showCricle && !showRectangle {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100,height: 100)
            }
            Spacer()
  
        }
    }
}

#Preview {
    ConditionBootcamp()
}
