//
//  ForEachBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 5/5/2567 BE.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data : [String] = ["Phuthanet","Roopsoong","IT"]
    let myString : String =  "Hello"
    var body: some View {
//        VStack {
//            ForEach(0..<10) { index  in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is : \(index)")
//                }
//            }
//        }
        
        VStack {
            ForEach(data.indices){ index in
                Text("\(data[index])")
                 
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
