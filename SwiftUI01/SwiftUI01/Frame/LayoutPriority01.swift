//
//  LayoutPriority01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/23.
//

import SwiftUI
//LayoutPriority
struct LayoutPriority01: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Color.red
                Color.green
                Color.blue
            }.frame(height: 40)
            
            HStack{
                Color.red.layoutPriority(1)
                Color.green
                Color.blue.layoutPriority(1)
            }.frame(height: 40)
            
            HStack{
                Color.red.layoutPriority(1)
                Color.green.frame(minWidth: 30)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }.frame(height: 40)
            
            HStack{
                Color.red.frame(width: 50)
                Color.green.layoutPriority(1)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }.frame(height: 40)
        }
    }
}

struct LayoutPriority01_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority01()
    }
}
