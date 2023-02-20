//
//  GeometryReader02.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct GeometryReader02: View {
    var body: some View {
        GeometryReader{ gm in
            Text("Geometry Reader")
                .font(.largeTitle).bold()
                .position(x: gm.size.width/2, y: gm.safeAreaInsets.top + 30)
            
            VStack{
                Text("Size").bold()
                Text("width:\(Int(gm.size.width))")
                Text("height:\(Int(gm.size.height))")
            }.position(x:gm.size.width/2,y:gm.size.height/2.5)
            
            VStack{
                Text("SafeAreaInsets").bold()
                Text("Top : \(Int(gm.safeAreaInsets.top))")
                Text("bottom : \(Int(gm.safeAreaInsets.bottom))")
            }.position(x:gm.size.width/2,y:gm.size.height/1.4)
        }.font(.title)
            .frame(height: 500)
            .border(Color.green, width: 5)
    }
}

struct GeometryReader02_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader02()
    }
}
