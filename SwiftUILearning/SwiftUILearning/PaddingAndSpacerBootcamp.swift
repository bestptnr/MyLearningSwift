//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment:.leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            
            Text("This is the description of what we will do on this screen. It is mutiple lines and will align the text to the leading edge.")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
                .shadow(
                color: Color.black.opacity(0.3),
                radius: 10,
                x:0.0,y:10)
        )
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
