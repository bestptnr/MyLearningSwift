//
//  ListBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 6/5/2567 BE.
//

import SwiftUI

struct ListBootcamp: View {
    @State var dataFruit    : [String]  = ["Apple","Orange","Banana"]
    @State var dataVeggin   : [String]  = ["Tomato","Potato","Carrot"]
    
    var body: some View {
        NavigationStack {
            List{
                Section(content: {
                    ForEach(dataFruit, id : \.self ){item in
                        Text(item)
                            .foregroundStyle(.red)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform:move)
                
                },header: {
                    HStack{
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.red)
                })
           
                Section(content: {
                    ForEach(dataVeggin, id : \.self ){item in
                        Text(item)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform:move)
                
                },header: {
                    Text("Veggies")
                })
            }
//            .listStyle(PlainListStyle())
            .navigationTitle("Grocery List")
            .toolbar(content: {
                ToolbarItemGroup(placement:.topBarLeading){
                    EditButton()
                }
                ToolbarItemGroup(placement:.topBarTrailing){
                    addButton
                }
            })
        }.accentColor(.red)
    }
    var addButton: some View {
        Button(action: {
            add()
        }, label: {
            Text("Add")
        })
    }
    func delete(indexSet:IndexSet){
        dataFruit.remove(atOffsets: indexSet)
    }
    func move(indices:IndexSet,newOffset:Int){
        dataFruit.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        dataFruit.append("Coconut")

    }
}

#Preview {
    ListBootcamp()
}
