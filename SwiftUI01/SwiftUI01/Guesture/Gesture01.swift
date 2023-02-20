//
//  Gesture01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct Gesture01: View {
    let tapGesture = TapGesture(count: 2).onEnded { _ in
        print("tapped")
    }
    var body: some View {
        VStack{
            Circle().onTapGesture {
                print("tapped")
            }.foregroundColor(.red)
            Circle().onTapGesture(count: 2 ) {
                print("2tapped")
            }.foregroundColor(.yellow)
            
            Circle().gesture(tapGesture).foregroundColor(.green)
        }
        
    }
}

struct Gesture01_Previews: PreviewProvider {
    static var previews: some View {
        Gesture01()
    }
}
