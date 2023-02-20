//
//  PropertyFix01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/24.
//

import SwiftUI

struct PropertyFix01: View {
    // body 는 get 이기 때문에 immutable이다.
    //swiftUI는 어떤 상태를 저장하고 수정하는 방법으로 @State, @Binding을 제공
    //@State : 원천 자료, @Binding : 파생자료
    @State private var framework : String = "UIkit"
    var body: some View {
        Button(framework){
            self.framework = "SwiftUI"
        }
    }
}

struct PropertyFix01_Previews: PreviewProvider {
    static var previews: some View {
        PropertyFix01()
    }
}
