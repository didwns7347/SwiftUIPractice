//
//  SwiftUIViewLayout.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/14.
//

import SwiftUI

struct SwiftUIViewLayout: View {
    var body: some View {
        HStack(spacing: 20){
            Button("Button"){
                print("button1")
            }
            
            Button {
                print("button2")
            } label: {
                Text("Button")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
            
            Button {
                print("Button3")
            } label: {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 80,height: 80)
                    .overlay(Text("Button"))
            }.accentColor(.green)


        }
        
        
    }
}

struct SwiftUIViewLayout_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewLayout()
    }
}
