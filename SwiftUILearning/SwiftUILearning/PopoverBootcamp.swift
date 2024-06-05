//
//  PopoverBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen : Bool = false
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Button(action: {
                    withAnimation(.spring){
                        showNewScreen.toggle()
                    }
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .font(.largeTitle)
                })
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            // METHOD 2 - TRANSITAION
//            ZStack{
//                if showNewScreen {
//                  
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                            .transition(.move(edge: .bottom))
//                    
//                 
//                }
//            }.zIndex(2.0)
            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showNewScreen)

        }
    }
}
struct NewScreen : View {
    @Environment(\.presentationMode) var mode
    @Binding var showNewScreen : Bool
    var body : some View {
        ZStack(alignment:.topLeading){
            Color.purple.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button(action: {
//                mode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
    
    
}
#Preview {
    PopoverBootcamp()
}
