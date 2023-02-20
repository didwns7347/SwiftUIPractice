//
//  Binding01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/25.
//

import SwiftUI
struct Binding01: View {
    @State private var isFavorite = true
    @State private var count = 0
    //@state 는 뷰가 UI상태를 저장하기 위한 데이터로 설계되었으므로, 해당
    //뷰가 소유하고 관리한다는 개념을 명시적으로 나타내기 위해 private로 접근래벨을
    //사용하는것이 좋음
    
    var body: some View {
        VStack(spacing:30){
            Toggle(isOn: $isFavorite){
                /**
                 $ keyword : 내부적으로 projectValue라는 프로퍼티를 이용하게 되는데 이타입이
                 Binding Type임.
                 */
                Text("isFavorit : \(isFavorite.description)")
            }
            Stepper("Coiunt: \(count)", value: $count)
        }.padding()
    }
}

struct Binding01_Previews: PreviewProvider {
    static var previews: some View {
        Binding01()
    }
}
