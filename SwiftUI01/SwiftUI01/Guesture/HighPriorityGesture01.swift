//
//  HighPriorityGesture01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct HighPriorityGesture01: View {
    let tapGesture = TapGesture().onEnded { _ in
        print("사각형 탭")
    }
    var body: some View {
        return VStack{
            Rectangle()
            Circle().onTapGesture {
                print("원형 탭")
            }
        }
        //.gesture(tapGesture)
        .highPriorityGesture(tapGesture)
    }
}

struct HighPriorityGesture01_Previews: PreviewProvider {
    static var previews: some View {
        HighPriorityGesture01()
    }
}
