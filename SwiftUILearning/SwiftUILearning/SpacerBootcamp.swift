//
//  SpacerBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack (spacing:nil){
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Spacer(minLength: 0).frame(height: 10).background(.orange)
//
//        }
//        .background(.blue)
//        .padding(.horizontal,16)
        
        VStack {
            HStack(spacing:0){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(.yellow)
            .padding(.horizontal)
            .background(.blue)
            Spacer()
                .frame(width:10)
                .background(.orange)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
