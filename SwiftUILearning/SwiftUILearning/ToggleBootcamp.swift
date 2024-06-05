//
//  ToggleBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 7/5/2567 BE.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn : Bool = false
    var body: some View {
        Toggle(
            isOn: $toggleIsOn , label:{
                Text("Notifications")
            }
        )
    }
}

#Preview {
    ToggleBootcamp()
}
