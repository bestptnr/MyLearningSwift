//
//  NavigationViewBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 6/5/2567 BE.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    @State private var text = ""
       @State private var bold = false
       @State private var italic = false
       @State private var fontSize = 12.0


       var displayFont: Font {
           let font = Font.system(size: CGFloat(fontSize),
                                  weight: bold == true ? .bold : .regular)
           return italic == true ? font.italic() : font
       }
    var body: some View {
        NavigationStack{
            ScrollView{
                NavigationLink("Link to second page", destination: SecondScreens())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All in boxes")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Slider(
                        value: $fontSize,
                        in: 8...120,
                        minimumValueLabel:
                            Text("A").font(.system(size: 8)),
                        maximumValueLabel:
                            Text("A").font(.system(size: 16))
                    ) {
                        Text("Font Size (\(Int(fontSize)))")
                    }
                    .frame(width: 150)
                    Toggle(isOn: $bold) {
                        Image(systemName: "bold")
                    }
                    Toggle(isOn: $italic) {
                        Image(systemName: "italic")
                    }
                }
            }
        }
    }
}
struct SecondScreens : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View{
        ZStack{
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarBackButtonHidden()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Back")
            })
        }
    }
}
#Preview {
    NavigationViewBootcamp()
}
