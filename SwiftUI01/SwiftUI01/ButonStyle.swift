//
//  ButonStyle.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct ButonStyle: View {
    var body: some View {
        VStack(spacing:30){
            Button("DefaultButtonStyle" )
            {}
                .buttonStyle(DefaultButtonStyle())
            
            Button("BorderlessButtonStyle"){}
                .buttonStyle(BorderlessButtonStyle())

            Button("PlainButtonStyle"){}
                .buttonStyle(PlainButtonStyle())
        }
    }
}

struct ButonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButonStyle()
    }
}
