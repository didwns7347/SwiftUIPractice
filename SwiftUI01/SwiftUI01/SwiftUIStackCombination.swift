//
//  SwiftUIStackCombination.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/14.
//

import SwiftUI

struct SwiftUIStackCombination: View {
    var body: some View {
        VStack{
            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
            
            HStack {
                Text("둥근 모형").font(.title)
                Spacer()
            }
            ZStack{
                Rectangle().frame(height:10)
                HStack{
                    Circle().fill(Color.yellow)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.orange)
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray)
                }
            }
            HStack {
                Text("각진 모양").font(.title)
                Spacer()
            }
            ZStack{
                Rectangle().frame(height:10)
                HStack{
                    Rectangle().fill(Color.yellow)
                    Rectangle().fill(Color.green)
                    Rectangle().fill(Color.orange)
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray)
                }
            }
        }.padding()
    }
}

struct SwiftUIStackCombination_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStackCombination()
    }
}
