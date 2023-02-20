//
//  Gesture02.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI
//Longpress
struct Gesture02: View {
    var body: some View {
        let circle = Circle()
        circle.onLongPressGesture(
            minimumDuration: 0.5,
            maximumDistance: 10,
            pressing:{pressing in print(pressing)} ,
            perform: {print("Recognized")})
    }
}

struct Gesture02_Previews: PreviewProvider {
    static var previews: some View {
        Gesture02()
    }
}
