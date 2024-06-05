//
//  TextFieldBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 7/5/2567 BE.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var text         : String    = ""
    @State var arrayText    : [String]  = []
    var body: some View {
        NavigationStack{
            VStack {
                TextField("Type something", text: $text)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundStyle(.red)
                .font(.headline)
                
                Button(action: {
                    if checktext(){
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(checktext() ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(!checktext())
                
                ForEach(arrayText,id : \.self){data in
                        Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    func checktext()-> Bool{
        if text.count >= 3 {
            return true
        }
        return false
    }
    func saveText(){
        arrayText.append(text)
        text = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
