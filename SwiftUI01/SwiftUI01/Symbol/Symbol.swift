//
//  Symbol.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/05.
//

import SwiftUI

struct Symbol: View {
    let systemName : String
    let imageScale : Image.Scale
    let color : Color?
  
    
    init(
        _ systemName : String,
        scale imageScale : Image.Scale = .medium,
        color : Color? = nil
    ){
        self.systemName = systemName
        self.imageScale = imageScale
        self.color = color
    }
    
    var body: some View {
        Image(systemName: systemName)
            .imageScale(imageScale)
            .foregroundColor(color)
        
        
    }
    
}

struct Symbol_Previews: PreviewProvider {
    static var previews: some View {
        Symbol("star")
    }
}
