//
//  CustomButtonStyle.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/01.
//

import SwiftUI
struct CustomButtonStyle: ButtonStyle{
   
    
    var backgroundColor : Color = .blue
    var cornerRadius : CGFloat = 6
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius).fill(backgroundColor))
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
            
    }
}
