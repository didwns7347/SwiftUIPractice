//
//  AnimationSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/07.
//

import SwiftUI

struct AnimationSample: View {
    @State private var blur_1 : Bool = false
    @State private var reduction_1: Bool = false
    @State private var blur_2 : Bool = false
    @State private var reduction_2: Bool = false
    var body: some View {
        VStack{
            Image("SwiftUI")
                .blur(radius: blur_1 ? 5:0)
                .scaleEffect(reduction_1 ? 0.7:1)
                .onTapGesture {
                    self.blur_1.toggle()
                    self.reduction_1.toggle()
                }
                .animation(.default)
            /**
             animation수식어가 적용된 뷰는 애니메이션이 가능한 모든 상태중 하나라도 변하면 뷰를 새로 그리면서 관련된 애니매에션을 수정함.
             특정 상태의 변화에 대한 조건을 설정
             equatble타입을 전달받은 수식어를 사용.
             */
            //            .animation(.default, value: reduction)
            //다음과같이 적용하게 되면 reduction의 변화에 에니메이션이 반응함.
            
            Image("SwiftUI")
                .blur(radius: blur_2 ? 5:0)
                .scaleEffect(reduction_2 ? 0.7:1)
                .onTapGesture {
                    self.blur_2.toggle()
                    self.reduction_2.toggle()
                }
                .animation(.default, value: blur_2)
            
            
            //특정 값이 변하면 관련된 값을 사용하는 모든 뷰에 에니메이션이 동작하도록함.
            Image("SwiftUI")
                .blur(radius: blur_1 ? 5:0 )
                .scaleEffect(reduction_1 ? 0.7:1)
                .onTapGesture {
                    withAnimation{
                        self.blur_1.toggle()
                        self.reduction_1.toggle()
                    }
                    //에니메이션에서 제외 시키기 위해서는 밖으로 꺼내면됨.
                }
        }
    }
}

struct AnimationSample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationSample()
    }
}
