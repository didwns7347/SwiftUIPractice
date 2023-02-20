//
//  SymbolUseEx.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/05.
//

import SwiftUI

struct SymbolUseEx: View {
    var body: some View {
        VStack{
            Symbol("heart.fill")
            //다음 코드와 동일
            Image(systemName:"heart.fill")
                .imageScale(.medium)
                .foregroundColor(nil)
            
            Symbol("heart.fill",color:.red)
            Symbol("heart.fill",scale: .large)
            Symbol("heart.fill").foregroundColor(.red)//무시됨. -> 이미적용된 상태임. 
        }
        
    }
}

struct SymbolUseEx_Previews: PreviewProvider {
    static var previews: some View {
        SymbolUseEx()
    }
}
