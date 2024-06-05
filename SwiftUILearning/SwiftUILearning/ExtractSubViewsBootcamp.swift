//
//  ExtractSubViewsBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            MyItem(title: "Apples", count: 123, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewsBootcamp()
}

struct MyItem: View {
    let title : String
    let count : Int
    let color : Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
