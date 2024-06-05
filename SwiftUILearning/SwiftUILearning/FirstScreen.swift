//
//  FirstScreen.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct FirstScreen: View {
    var body: some View {
        ZStack {
            VStack{
                HStack{
                    Image(.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    
                    Text("Khon Kaen University")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                VStack{
                    TextInput(label: "Student ID")
                    TextInput(label: "Password")
                }
                .padding(.horizontal,16)
            }
        }
    

    }
}

#Preview {
    FirstScreen()
}

struct TextInput: View {
    let label : String
    
    var body: some View {
        TextField(label, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(10)
            .background(
                Color.white
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.2),radius: 8,x: 0.0,y: 5)
            )
            .padding(.bottom,24)
       
    }
}
