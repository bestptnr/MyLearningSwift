//
//  StacksBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> Zindex
    var body: some View {
//        VStack(alignment: .leading, spacing:0, content: {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200,height: 100)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        })
        ZStack{
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500 ,alignment: .center)
            VStack(alignment:.leading){
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(.green)
                    .frame(width: 100 , height: 100)
                HStack {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50 , height: 50)
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75 , height: 75)
                }
                
            } .background(.black)
        }
        
    }
}

#Preview {
    StacksBootcamp()
}
