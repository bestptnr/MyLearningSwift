//
//  StateBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor : Color  = Color.green
    @State var myTitle :String          = "My Title"
    @State var count: Int               = 0
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:20){
                Text(myTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing:20){
                    Button(action: {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count+=1
                    }, label: {
                        Text("Button 1")
                    })
                    Button(action: {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count+=1
                    }, label: {
                        Text("Button 2")
                    })
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
