//
//  ListViewSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct ListViewSample: View {
    var body: some View {
        List{
            Text("0").font(.largeTitle)
//            Text("2")
//            Text("3")
//            Text("4")
//            Text("5")
//            Text("6")
//            Text("7")
//            Text("8")
//            Text("9")
//            Text("0")
            Image("SwiftUI")
            Circle().frame(width: 100,height: 100)
        }
        return List(0..<100){
            Text("\($0)")
        }.listStyle(.grouped)
    }
}

struct ListViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ListViewSample()
    }
}
