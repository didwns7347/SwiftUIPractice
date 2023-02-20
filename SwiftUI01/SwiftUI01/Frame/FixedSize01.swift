//
//  FixedSize01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/23.
//

import SwiftUI

struct FixedSize01: View {
    var body: some View {
        //fixedSize 미적용
//        VStack{
//            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30)
//
//            Rectangle()
//            Color.red
//            Image("SwiftUI").resizable()
//        }
        //fixed Size 적용
        VStack{
            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30).fixedSize(horizontal: true, vertical: true)
            
            Rectangle().fixedSize()
            Color.red.fixedSize()
            Image("SwiftUI").resizable().fixedSize()
        }
    }
}

struct FixedSize01_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize01()
    }
}
