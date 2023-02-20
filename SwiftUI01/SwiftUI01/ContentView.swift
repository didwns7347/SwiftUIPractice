//
//  ContentView.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:30) {
            Text("폰트와 굵기 설정")
                .font(.title)
                .fontWeight(.black)
            
            Text("글자색은 ForeGround 배경은 Background")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo", size: 16))
                .bold()
                .italic()
                .underline()
                .strikethrough()
            
            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n이건안보입니다.")
                .lineLimit(2)
                .multilineTextAlignment(.trailing)
                .fixedSize()
            
            (Text("자간과 기준선").kerning(11)+Text(" 조정도 쉽게 가능합니다.")).baselineOffset(2)
                .font(.system(size:16))
            //수식어의 순서가 중요함
            Text("☠️👽😺😼😾")
                .font(.largeTitle)
                .background(Color.yellow)
                .padding()
            Text("☠️👽😺😼😾")
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
