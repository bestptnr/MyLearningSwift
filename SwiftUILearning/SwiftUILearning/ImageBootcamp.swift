//
//  ImageBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 4/5/2567 BE.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("person")
//            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .aspectRatio(contentMode: .fill)
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 300,height: 300)
            .clipped()
            .cornerRadius(150)
    }
}

#Preview {
    ImageBootcamp()
}
