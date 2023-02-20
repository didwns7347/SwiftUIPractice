//
//  GeometrySample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct GeometrySample: View {
    var body: some View {
        GeometryReader{ _ in
            Circle().fill(Color.purple)
                .frame(width: 350,height: 350)
            Circle().fill(Color.blue)
                .frame(width: 280,height: 280)
            
            Circle().fill(Color.orange)
                .frame(width: 200,height: 200)
            
            Text("TopLeading").font(.title)
                
        }.background(Color.gray)
    }
}

struct GeometrySample_Previews: PreviewProvider {
    static var previews: some View {
        GeometrySample()
    }
}
/**
 Geometry Proxy
 size : 지오메트리 리더의 크기를 반환
 safeAreaInest: 지오메트리 리더가 사용된 환경에서의 안전 여역에 대한 크기를 반환
 frame(in:) : 특정 좌표계를 기준으로 한 프레임 정보를 제공
 subscript(anchor:) : 자식 뷰에서 anchorPreference수식어를 이용해 제공한 좌표나 프레임을 지오메트리 리더의 좌표계를 기준으로 다시 변환 하여 사용하는 첨자입니다. 이때 Anchor의 제너릭 매게 변수에 CGRect또는 CGPoint타입 두가지를 사용 할 수있습니다.
 frame
 ]
 */
