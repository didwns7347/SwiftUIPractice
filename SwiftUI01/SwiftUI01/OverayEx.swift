//
//  OverayEx.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/14.
//

import SwiftUI

struct OverayEx: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle().fill(Color.green).frame(width:150,height: 150)
                Rectangle().fill(Color.yellow).frame(width:150,height: 150)
            }
            
            Rectangle().fill(Color.green).frame(width: 150,height: 150)
                .overlay(Rectangle().fill(Color.yellow))
            
            Rectangle().fill(Color.yellow).frame(width: 150,height: 150)
                .background(Rectangle().fill(Color.green))
        }
        
    }
}

struct OverayEx_Previews: PreviewProvider {
    static var previews: some View {
        OverayEx()
    }
}
