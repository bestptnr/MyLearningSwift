//
//  SafeAreaBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
  
//        ZStack {
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(.red)
//            GeometryReader { reader in
//                Color.white
//                    .frame(height: reader.safeAreaInsets.top, alignment: .top)
//                    .ignoresSafeArea()
//            }
    
//        }
        ScrollView{
            VStack{
                Text("Title gose here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                ForEach(0..<10){index in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                }
            }
        }.background(.red)
      
    }
}

#Preview {
    SafeAreaBootcamp()
}
