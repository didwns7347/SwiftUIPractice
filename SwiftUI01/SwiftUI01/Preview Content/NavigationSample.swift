//
//  NavigationSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct NavigationSample: View {
    var body: some View {
        //타이틀은 NavigationView 내비게이션을 수식하는 것이 아닌 내부에서 사용해아함.
        let leadingItem = Button(action: {print("Leading Item Tapped")}) {
            Image(systemName: "bell").imageScale(.large)
        }
        
        let trailingItem = Button(action: {print("Trailing")}) {
            Image(systemName: "gear").imageScale(.large)
        }
        //Hstack으로 추가 가능.
        let trailingItems = HStack{
            leadingItem
            trailingItem
        }
        
        return NavigationView{
            Image("SwiftUI")
                .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                .navigationBarTitle("내비게이션 바타이틀", displayMode: .automatic)
        }
    }
}

struct NavigationSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSample()
    }
}
