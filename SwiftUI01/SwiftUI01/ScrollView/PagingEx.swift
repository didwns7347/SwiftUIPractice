//
//  PagingEx.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/06.
//

import SwiftUI
/**
 스위프트 유아이에는 스크롤뷰를위한 페이징 기능을 직접 제공 ㄴㄴ함.
 UiScrolle 뷰의 기본 속성을 변경하여 적용 가능.
 */
struct PagingEx: View {
    
    var body: some View {
        let colors :[Color] = [.red, .green, .blue]
        return GeometryReader{ g in
            ScrollView(.horizontal){
                HStack(spacing: 0) {
                    ForEach(colors.indices){ index in
                        Circle()
                            .fill(colors[index])
                            .overlay(Text("\(index) 페이지").font(.largeTitle).foregroundColor(.white))
                    }
                    .frame(width: g.size.width, height: g.size.height)
                }
            }
            .onAppear{UIScrollView.appearance().isPagingEnabled = true}
        }
    }
    
}

struct PagingEx_Previews: PreviewProvider {
    static var previews: some View {
        PagingEx()
    }
}
