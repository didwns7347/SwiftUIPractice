//
//  DragGesture03.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct DragGesture03: View {
    @GestureState private var translation : CGSize = .zero
    @State private var latestTranslation : CGSize = .zero
    var body: some View {
        let circle = Circle()
//        let dragGesture = DragGesture()
//            .updating($translation) { value, state, _ in
//                state = value.translation
//            }.onEnded { value in
//                self.latestTranslation = value.translation
//
//            }
        let dragGesture = DragGesture().onChanged({self.latestTranslation = $0.translation})
            
        return circle.size(width: 20, height: 20).offset(latestTranslation)
            .gesture(dragGesture)
    }
  
}

struct DragGesture03_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture03()
    }
}
