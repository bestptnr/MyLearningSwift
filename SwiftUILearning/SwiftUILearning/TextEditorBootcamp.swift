//
//  TextEditorBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 7/5/2567 BE.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText : String = "This is a text in texteditor"
    @State var savedText : String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .colorMultiply(.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                Text(savedText)
                Spacer()
            }
            .padding()
//            .background(Color.green)
            .navigationTitle("TextEditor")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
