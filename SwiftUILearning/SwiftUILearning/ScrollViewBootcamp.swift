//
//  ScrollViewBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators:false){
            LazyVStack{
                ForEach(0..<100){ index in
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    }
         
                }
    
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
