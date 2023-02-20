//
//  Animation02.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/07.
//

import SwiftUI
/**
 암시적 VS 명시적 에니매이션
 animation 수식어는 그이전에 적용된 모든 에니메이션 가능한 항목에 대해 에니매이션을 적용한 반면
 withanimation함수는 에니메이션 동작데이터를 직접지정함.

 
 //애니메이션 타이밍
 default
 - 에니매이션 지속시간이 0.35초 고정
 linear
 - 에니메이션이 일정 속도로 진행됨.  부자연스러워 잘 사용하지 않음. -> 반복되는 애니메이션에 사용됨.
 easeIn
 - 점점 빠르게 진행됨.애니메이션이 갑자기 사라지는 느낌을 줄 수있기 때문에 화면 밖으로 사라지는 뷰 등에 사용.
 easeOut
 - 점점느려짐.
 -easeInOut
 - 느리다 빠르다 느리게 동작
 -timingCurve
 - 타이밍을 직접 지정해서 에니메이션 효과를 사용가능함.
 */
struct Animation02: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Animation02_Previews: PreviewProvider {
    static var previews: some View {
        Animation02()
    }
}
