//
//  AnimationTimingBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack {
            Button(action: {
                isAnimated.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isAnimated ? 350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .animation(Animation.linear(duration: 1.0), value:isAnimated)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimated ? 350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .animation(Animation.easeIn(duration: 1.0), value:isAnimated)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isAnimated ? 350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .animation(Animation.easeInOut(duration: 1.0), value:isAnimated)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isAnimated ? 350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .animation(.spring(response: 3.0,dampingFraction: 0.5,blendDuration: 1.0), value:isAnimated)

        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
