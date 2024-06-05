//
//  TextBootcamp.swift
//  SwiftUILearning
//
//  Created by Phuthanet on 4/5/2567 BE.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("ทดสอบการเขียนว่ามันสามารถเขียนได้ขนาดไหนเกี่ยวกับ text ลองทำความเข้าใจดูเข้าใจการทำงานว่าเป็นอย่างไร")
//            .font(.largeTitle)
//            .bold()
//            .underline(color:.red)
//            .italic()
//            .strikethrough(color:.red)
//            .font(.system(size: 24,weight: .bold,design: .monospaced))
            .multilineTextAlignment(.center)
            .baselineOffset(20)
            .padding(.horizontal, 8.0)
    }
}

#Preview {
    TextBootcamp()
}
