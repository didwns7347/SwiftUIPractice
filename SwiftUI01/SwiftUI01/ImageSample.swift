//
//  ImageSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/14.
//

import SwiftUI

struct ImageSample: View {
    var body: some View {
        VStack{
            HStack{
                //Frame으로 이미지의 크기는 변하지 않음. 뷰가 차지하는 공간만 변화함.
                Image(systemName: "star.fill").frame(width: 100,height: 100)
                Image(systemName: "star.fill").frame(width:50, height:50)
                //크기를 변경해야 하는경우 resizable을 사용해야 함.
            }
            
            HStack{
                Image(systemName: "star.fill").resizable().frame(width: 150, height: 150)
                
                Image(systemName: "star.fill").resizable(resizingMode: .tile).frame(width: 200, height: 200)
            }
            
            HStack{
                Image(systemName: "star.fill").resizable()
                    .frame(width: 100,height: 150)
                Image(systemName: "star.fill").resizable().scaledToFit()
                    .frame(width: 100,height: 150)
                Image(systemName: "star.fill").resizable().scaledToFill()
                    .frame(width: 100,height: 150)
            }
            HStack(spacing: 20){
                Image(systemName: "star.fill").resizable()
                    .frame(width: 100,height: 150).clipShape(Circle())
                Image(systemName: "star.fill").renderingMode(.original).resizable().scaledToFit()
                    .frame(width: 100,height: 150)
                Image(systemName: "star.fill").resizable().scaledToFill()
                    .frame(width: 100,height: 150)
            }.foregroundColor(.red)
        }
    }
}

struct ImageSample_Previews: PreviewProvider {
    static var previews: some View {
        ImageSample()
    }
}
