//
//  FixedSize02.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/23.
//

import SwiftUI

struct FixedSize02: View {
    var body: some View {
        VStack(spacing:100){
            Group{ //자식뷰에 공통으로 동일한 수식어를 사용할 경우
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.")
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: true, vertical: false)
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: false, vertical: true)
            }.font(.title)
                .frame(width: 150, height: 40)
        }
    }
}

struct FixedSize02_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize02()
    }
}
