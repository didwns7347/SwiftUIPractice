//
//  ButtonView02.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct ButtonView02: View {
    var body: some View {
        HStack(spacing:20)
        {
            Button(action: {print("Button1")}){
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 120, height: 120)
            }.accentColor(.green)
            
            Button(action:{print("Button2")}){
                Image(systemName: "play.circle")
                    .renderingMode(.original)
                    .imageScale(.large)
                    .font(.largeTitle)
            }
            .padding()
        }.padding()
    }
}

struct ButtonView02_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView02()
    }
}
