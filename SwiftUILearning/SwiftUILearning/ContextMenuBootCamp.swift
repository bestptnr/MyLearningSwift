//
//  ContextMenuBootCamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 7/5/2567 BE.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    var body: some View {
        VStack(alignment:.leading,spacing: 8){
            Image(systemName: "house.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Something word...")
                .font(.headline)
            Text("caption description bababa")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Label("Report post", systemImage: "flame.fill")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Label("Like post", systemImage: "flame.fill")
            })
        }))

    }
}

#Preview {
    ContextMenuBootCamp()
}
