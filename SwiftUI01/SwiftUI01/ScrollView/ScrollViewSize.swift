//
//  ScrollViewSize.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/06.
//

import SwiftUI

struct ScrollViewSize: View {
    var body: some View {
        ScrollView{
            Color.red
            Color.blue.frame(idealHeight: 30)
            Color.green.frame(idealHeight: 200)
        }
    }
}

struct ScrollViewSize_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewSize()
    }
}
