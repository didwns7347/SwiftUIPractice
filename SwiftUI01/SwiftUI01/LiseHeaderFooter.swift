//
//  LiseHeaderFooter.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct LiseHeaderFooter: View {
    let fruits = ["사과", "배", "포도", "바나나"]
    let drink = ["물","우유","바나나"]
   
    
    var body: some View {
        let titles = ["Fruits","Drinks"]
        let data = [fruits,drink]
        return List{
            ForEach(data.indices){ index in
                Section(header: Text(titles[index]).font(.title), footer: HStack{
                    Spacer()
                    Text("\(data[index].count)건")
                }, content: {
                    ForEach(data[index],id:\.self){
                        Text($0)
                    }
                }
                )
            }
        }.listStyle(.insetGrouped)
    }
}

struct LiseHeaderFooter_Previews: PreviewProvider {
    static var previews: some View {
        LiseHeaderFooter()
    }
}
