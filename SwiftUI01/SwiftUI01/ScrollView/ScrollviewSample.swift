//
//  ScrollviewSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/06.
//

import SwiftUI

struct ScrollviewSample: View {
    var body: some View {
        GeometryReader{ g in
            VStack{
                Text("Vertical ScrollView")
                    .font(.largeTitle)
                ScrollView{
                    ForEach(0..<10){i in
                        Circle()
                            .fill(Color(white: 0.2 + (0.8*Double(i) / 10)))
                            .frame(width:80, height:80)
                    }
                    .frame(width: g.size.width / 2)
                }
                .frame(height: g.size.height / 2 )
                .padding(.bottom)
                .background(Color.green)
                
                Text("HorizonTal ScrollView").font(.largeTitle)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(0..<10) { i in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.yellow)
                                .frame(width: 100 , height : 100)
                                .scaleEffect(1 -  (0.7 * CGFloat(i)/10))
                        }
                    }
                    .frame(height: g.size.height/5)
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct ScrollviewSample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollviewSample()
    }
}
