//
//  GridBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct GridBootcamp: View {
    
    let colunms : [GridItem] = [
        GridItem(.flexible(),spacing:nil, alignment: nil),
        GridItem(.flexible(),spacing:nil, alignment: nil),
        GridItem(.flexible(),spacing:nil, alignment: nil),
//        GridItem(.flexible(),spacing:nil, alignment: nil),
//        GridItem(.flexible(),spacing:nil, alignment: nil)
//        GridItem(.adaptive(minimum: 50, maximum: 300)),
//        GridItem(.adaptive(minimum: 150, maximum: 300))

    ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(
                columns: colunms,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(content: {
                        ForEach(0..<50){ _ in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }, header: {
                        Text("Section 1")
                            .foregroundStyle(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .background(.blue)
                            .padding()
                    })
            })
            LazyVGrid(columns: colunms) {
                ForEach(0..<50){ _ in
                    Rectangle()
                        .frame(height: 50)
                }

            }
        }

    }
}

#Preview {
    GridBootcamp()
}
