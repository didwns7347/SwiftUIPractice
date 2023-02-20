//
//  GestureMask01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct GestureMask01: View {
    let longPressGesture = LongPressGesture()
        .onChanged{_ in print("LongPress Begin!")}
        .onEnded{_ in print("LongPressed!")}
    
    let tapGesture = TapGesture().onEnded{print("Tapped!")}
    var body: some View {
        return VStack{
            Circle().gesture(longPressGesture)
        }.gesture(tapGesture, including: .none)
    }
}

struct GestureMask01_Previews: PreviewProvider {
    static var previews: some View {
        GestureMask01()
    }
}
