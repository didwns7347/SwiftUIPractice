//
//  NavigationLinkSample.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/22.
//

import SwiftUI

struct NavigationLinkSample: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: Text("DESTINATION VIEW").navigationBarBackButtonHidden(true)) {
                Image("SwiftUI")
            }
            .navigationBarTitle("네비게이션 링크")
            //navigation var hidden
//            .navigationBarHidden(true)
        }
//        let destination = ButtonStyle()
//        return NavigationView{
//            NavigationLink(destination: destination) {
//                Image("SwiftUI").renderingMode(.original)
//            }
//            .navigationBarTitle("내비게이션 바 백버튼 히든")
//        }
    }
}

struct NavigationLinkSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkSample()
    }
}
