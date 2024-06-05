//
//  ColorBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 4/5/2567 BE.
//

import SwiftUI

struct ColorBootcamp: View {
    var color = Color( #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                .primary
//                Color(color)
                .custom
            )
            .frame(width: 300,height: 200)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius:20, x: 0, y: 20)
    }
}

#Preview {
    ColorBootcamp()
}
