//
//  SwiftUIView.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/01.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("커스텀 버튼 스타일"){}
                .buttonStyle(CustomButtonStyle(backgroundColor: .green))
            Button("CustomButton2"){}
                .buttonStyle(CustomButtonStyle(cornerRadius: 20))
            Button("PrimitiveButtonCustom01"){}
                .buttonStyle(CustomPrimitiveButtonStyle())
            Button("PrimitivieButtonCustom02"){}
                .buttonStyle(CustomPrimitiveButtonStyle(minimunDuration: 1))
            Button(action: {print("PRESSED")}, label: {Text("primitive01")})
                .buttonStyle(CustomPrimitiveButtonStyle(minimunDuration: 2))
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
