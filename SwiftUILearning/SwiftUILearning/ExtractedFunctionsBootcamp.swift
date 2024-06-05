//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor : Color = Color.pink
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            contentLayer
        }
    }
    var contentLayer : some View{
        VStack{
            Text("Title")
                
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(8)
            })
        }
    }
    func buttonPressed(){
        backgroundColor = Color.yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
