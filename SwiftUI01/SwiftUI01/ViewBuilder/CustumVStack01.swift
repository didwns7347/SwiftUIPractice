//
//  CustumVStack01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/24.
//

import SwiftUI

struct CustumVStack01: View {
    var body: some View {
        MyStack{
            Color.blue.frame(width:100, height:20)
            Text("Hello SwiftUI")
                .font(.title)
            Rectangle().frame(width: 250, height: 40)
        }
    }
}

struct CustumVStack01_Previews: PreviewProvider {
    static var previews: some View {
        CustumVStack01()
    }
}
struct MyStack<Content: View>: View{
    let content : Content
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    
    var body : some View{
        VStack(alignment: .leading, spacing: 5){
            content
        }
    }
}
