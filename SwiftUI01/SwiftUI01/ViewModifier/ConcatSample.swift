//
//  ConcatSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/30.
//

import SwiftUI
/**
 서로 다른 역할을 하는 viewmodifier 결합시켜줌 -> Concat
 */
struct ConcatSample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .customModifier(borderColor: .green)
    }
}

struct ConcatSample_Previews: PreviewProvider {
    static var previews: some View {
        ConcatSample()
    }
}
struct Modifier1 : ViewModifier{
    func body(content: Content) -> some View {
        content.font(.largeTitle)
    }
}

struct Modifier2 : ViewModifier{
    func body(content: Content) -> some View {
        content.foregroundColor(.blue)
    }
}
extension View{
    func customModifier(borderColor: Color = .red) -> some View{
        self.modifier(CustomViewModifier(borderColor: borderColor))
    }
}
