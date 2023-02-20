//
//  Frame02.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/23.
//

import SwiftUI
// 고정크기 VS 크기 제약 조건
struct Frame02: View {
    var body: some View {
        HStack{
            //minwidth vs maxwidth
            Rectangle().fill(Color.red).frame(minWidth:100)
            Rectangle().fill(Color.orange).frame(maxWidth:15)
            
            //height vs maxHeight
            Rectangle().fill(Color.yellow).frame(height:100)
            Rectangle().fill(Color.green).frame(maxHeight:.infinity)
            
            //.infinity
            Rectangle().fill(Color.blue).frame(maxWidth:.infinity,maxHeight:.infinity)
            Rectangle().fill(Color.purple)
            
        }
    }
}

struct Frame02_Previews: PreviewProvider {
    static var previews: some View {
        Frame02()
    }
}
