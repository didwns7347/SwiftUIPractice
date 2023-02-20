//
//  ListViewRandomAcess.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct ListViewRandomAcess: View {
    /**
     RandomAcessCollection 프로토콜을 준수하는 데이터를 제공
     Hashable프로토콜을 준수하는 프로퍼티를 지정해 id매게편수 지정,
     identifiable protocol 채택
     */
    let fruits = ["사과", "배", "포도", "바나나"]
    let drink = ["물","우유","바나나"]
    var body: some View {
        List{
            Text("Fruits").font(.largeTitle)
            ForEach(fruits, id:\.self){
                Text($0)
            }
            Text("Drink").font(.largeTitle)
            ForEach(fruits, id:\.self){
                Text($0)
            }
        }
    }
}

struct ListViewRandomAcess_Previews: PreviewProvider {
    static var previews: some View {
        ListViewRandomAcess()
    }
}
