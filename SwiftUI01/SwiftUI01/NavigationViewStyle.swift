//
//  NavigationViewStyle.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct NavigationViewStyle: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                NavigationLink(destination: Text("디테일 뷰 영역2").font(.largeTitle)) {
                    Text("마스터 뷰 메뉴1").font(.title)
                }
                
                NavigationLink(destination: Text("디테일 뷰 영역1").font(.largeTitle)) {
                    Text("마스터 뷰 메뉴2").font(.largeTitle)
                }
            }.navigationBarTitle("네비게이션 뷰 스타일")
            Text("디테일 뷰 ").font(.largeTitle)
        }
      
    }
}

struct NavigationViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewStyle()
    }
}
