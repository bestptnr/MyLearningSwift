//
//  ButtonBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        Text("\(title)")
        Button(
            action: {
                self.title = "PRESSSSSSSS"
            },
            label: {
                Text("Button")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(10).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
                    
            }
        )
        Button(
            action: {
                self.title = "Button 3"
            },
            label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    )
                    
            }
        )
        Button(
            action: {
                self.title = "Button 4"
            },
            label: {
                Text("FINISH".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(.gray,lineWidth: 2)
                    )
                
                    
            }
        )
    }
}

#Preview {
    ButtonBootcamp()
}
