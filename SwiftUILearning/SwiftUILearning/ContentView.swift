//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 4/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing:20){
            GeometryReader {g in
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: g.size.width,height: g.size.height)
                    .clipped()
                    .background(.green)
            }.frame(height: 100).padding()
            
            VStack{
                Spacer()
                Row()
                Spacer()
                Row()
                Spacer()
                Row()
                Spacer()
            }.background(.yellow)
        }
 
    }
}

#Preview {
    ContentView()
}

struct Row: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Col1").background(.red)
            Spacer()
            Text("Col2").background(.green)
            Spacer()
            Text("Col3").background(.blue)
            Spacer()
        }
    }
}
