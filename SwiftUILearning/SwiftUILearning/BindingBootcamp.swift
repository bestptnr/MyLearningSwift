//
//  BindingBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor : Color = Color.green
    @State var title : String          = "Title"
    var body: some View {
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text(title)
                    .foregroundStyle(.white)
                ExtractedView(backgroundColor: $backgroundColor,title: $title)
            }

        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ExtractedView: View {
    @Binding var backgroundColor : Color
    @Binding var title : String
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            title = "New TITLESSSSS"
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(8)
        })
    }
}
