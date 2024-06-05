//
//  AnimationBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack{
            Button(action: {
                withAnimation(
                    Animation
                        .default
                        .repeatCount(5,autoreverses: true)
                ){
                    isAnimated.toggle()
                }
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y : isAnimated ? 100 :0)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
