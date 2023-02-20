//
//  WhatisFrame.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI
/**
 Frame
 GeometryProxy 는 프레임에 대한 정보도 제공하는데, 여기서 프레임은 단순히 그 자신의 CGRect값을 전달
 하는것이 아니라 CoordinatorSpace라는 엵거형 타입
 Global : 윈도우의 Bounds을 기준으로
 Local: 지오메트리 리더의 바운드를 기준
 Named: 명시적으로 이름을 할당한 공간을 기준으로
 
 */
struct WhatisFrame: View {
    var body: some View {
       HStack{
            Rectangle().fill(Color.yellow).frame(width: 30)
            
            VStack{
                Rectangle().fill(Color.blue).frame(height: 200)
                
                GeometryReader{ gm in
                    self.contents(geometry: gm)
                }.background(Color.green)
                    .border(Color.red, width: 4)
            }
            .coordinateSpace(name: "VStackCS")
       }.coordinateSpace(name: "HStackCS")
    }
    
    func contents(geometry g:GeometryProxy)->some View{
//        print(g.frame(in: .global))
        return VStack{
            Text("Local").bold()
            Text(stringFormat(for:g.frame(in: .local).origin))
                .padding(.bottom)
            
            Text("Global").bold()
            Text(stringFormat(for:g.frame(in: .global).origin))
                .padding(.bottom)
            
            Text("Named VStackCS").bold()
            
            Text(stringFormat(for:g.frame(in: .named("VStackCS")).origin))
            Text("Named HStackCS").bold()
            Text(stringFormat(for:g.frame(in: .named("HStackCS")).origin))
            
        }
    }
    func stringFormat(for point:CGPoint)-> String{
        print(point)
        return "(x:\(point.x), y:\(point.y)"
    }
}

struct WhatisFrame_Previews: PreviewProvider {
    static var previews: some View {
        WhatisFrame()
    }
}
