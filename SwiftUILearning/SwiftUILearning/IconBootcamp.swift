//
//  IconBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 4/5/2567 BE.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 100))
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .foregroundColor(.red)
//            .shadow(radius: 20)
            .frame(width: 300,height: 300)
            .clipped()
    }
}

#Preview {
    IconBootcamp()
}
