//
//  GradientsBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 4/5/2567 BE.
//

import SwiftUI

struct GradientsBootcamp: View {
//    var color = Color(#colorLiteral())
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                    LinearGradient(
//                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)), Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))]),
//                        startPoint: .top,
//                        endPoint: .leading
//                    )
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.blue,Color.black]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 200)
                    AngularGradient(
                        gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                        center: .topLeading,
                        angle: .degrees(180+45)
                        )
                )
            .frame(width: 300,height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
