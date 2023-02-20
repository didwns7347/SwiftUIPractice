//
//  CustomPrimitiveButtonStyle.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/01.
//

import SwiftUI

struct CustomPrimitiveButtonStyle : PrimitiveButtonStyle{
    var minimunDuration = 0.5
    
    func makeBody(configuration: Configuration) -> some View {
        ButtonStyleBody(configuration: configuration, minimumDuration : minimunDuration)
    }
    
    private struct ButtonStyleBody: View{
        let configuration: Configuration
        let minimumDuration: Double
        
        @GestureState private var isPassed = false
        
        var body : some View{
            let longPress = LongPressGesture(minimumDuration: minimumDuration)
                .updating($isPassed) { value, state, _ in
                    state = value
                }.onEnded{  _ in self.configuration.trigger()}
            
            return configuration.label.foregroundColor(.white)
                .padding().background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .scaleEffect(isPassed ? 0.8:1.0)
                .opacity(isPassed ? 0.6:1.0)
                .gesture(longPress)
        }
    }
}
