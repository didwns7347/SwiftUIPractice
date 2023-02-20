//
//  FixedSizeInScrollView.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/06.
//

import SwiftUI

struct FixedSizeInScrollView: View {
    var body: some View {
        VStack{
            Color.red
            Color.orange
            Color.green
        }.fixedSize(horizontal: false, vertical: true)
            .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct FixedSizeInScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeInScrollView()
    }
}
