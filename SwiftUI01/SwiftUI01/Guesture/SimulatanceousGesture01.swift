//
//  SimulatanceousGesture01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI
//한 뷰에 여러 제스쳐 등록시
struct SimulatanceousGesture01: View {
    let longPressGesture = LongPressGesture()
        .onChanged({_ in print("LongPress began!")})
        .onEnded({_ in print("LongPressed")})
    
    let tapGesture = TapGesture().onEnded { _ in
        print("Tapped!")
    }
    
    var body: some View {
        return Circle().gesture(longPressGesture).simultaneousGesture(tapGesture,including: .gesture)
    }
}

struct SimulatanceousGesture01_Previews: PreviewProvider {
    static var previews: some View {
        SimulatanceousGesture01()
    }
}
