//
//  GeometryScrlollVIew.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/06.
//

import SwiftUI

struct GeometryScrlollVIew: View {
    var body: some View {
        ScrollView{
            ForEach(0..<10){ _ in
                GeometryReader{
                    Rectangle().fill(self.color(from:$0 ))
                }
                .frame(width:150, height:150)
            }
        }
    }
    
    func color(from proxy : GeometryProxy) -> Color{
        let yOffset = proxy.frame(in: .global).minY - 44
        
        let color = min(1, 0.2 + Double(yOffset/1000))
        return Color(hue:color, saturation: color, brightness: color)
    }
}

struct GeometryScrlollVIew_Previews: PreviewProvider {
    static var previews: some View {
        GeometryScrlollVIew()
    }
}
/**
지오메트리 프록시에서 .global 좌표를 기준으로 프레임 정보를 얻으면 윈도우의 원점을 기준으로한 상대 좌표를 반환.
 */
 
