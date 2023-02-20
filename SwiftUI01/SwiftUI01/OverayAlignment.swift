//
//  OverayAlignment.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/14.
//

import SwiftUI

struct OverayAlignment: View {
    var body: some View {
        Circle().fill(Color.yellow.opacity(0.8))
            .frame(width: 250, height: 250)
            .overlay(Text("JoyStick").font(.largeTitle))
            .overlay(Image(systemName: "arrow.up").font(.title).padding(),alignment: .top)
            .overlay(Image(systemName: "arrow.left").font(.title).padding(),alignment: .leading)
            .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(),alignment: .topTrailing)
            .background(Image(systemName: "arrow.down").font(.title).padding(),alignment: .bottom)
            .background(Image(systemName: "arrow.right").font(.title).padding(),alignment: .trailing)
            
    }
}

struct OverayAlignment_Previews: PreviewProvider {
    static var previews: some View {
        OverayAlignment()
    }
}
