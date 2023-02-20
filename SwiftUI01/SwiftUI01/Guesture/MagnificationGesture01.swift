//
//  MagnificationGesture.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct MagnificationGesture01: View {
    @GestureState private var scale : CGFloat = 1
    @State private var latestScale : CGFloat = 1
    
    var body: some View {
        let magnificationGesture = MagnificationGesture()
            .updating($scale){(value, state, _) in
                state = value
            }.onEnded { scale in
                self.latestScale *= scale
            }
        return Circle().scaleEffect(latestScale * scale)
            .gesture(magnificationGesture)
    }
}

struct MagnificationGesture01_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture01()
    }
}
