//
//  Frame01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/23.
//

import SwiftUI

struct Frame01: View {
    var body: some View {
        VStack{
            Text("Frame").background(Color.yellow).frame(width: 200,height: 100,alignment: .top)
            
            Rectangle().fill(Color.yellow).frame(width: 200,height: 100)
        }
    }
}
/**
 뷰레이아웃 과정
 1. 부모뷰가 활용 가능한 크기기를 자식 뷰에 제안함
 2. 자식 뷰는 그 자신의 크기를 결정
 3. 부모뷰는 자신의 좌표 공간에 적절하게 자식뷰를 배치
 */

struct Frame01_Previews: PreviewProvider {
    static var previews: some View {
        Frame01()
    }
}
