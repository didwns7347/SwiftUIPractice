//
//  TabViewEx01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/06.
//

import SwiftUI

struct TabViewEx01: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            VStack{
                Text("첫 번째 탭").font(.largeTitle)
                Image("SwiftUI")
            }
            .tag(1)
            .tabItem {
                Image(systemName: "house")
                Text(self.selectedTab == 1 ? "아이템1":"noselected")
            }
            
            Text("두 번째 탭의 아이템")
                .font(.title)
                .padding()
                .background(Color.yellow)
                .tag(2)
                .tabItem {
                    Image(systemName: "cube")
                    Text("아이템2")
                }
            SomeView()
                .tag(3)
                .tabItem {
                    Image(systemName: "person")
                    Text("아이템3")
                }
        }.accentColor(.red)//색상 변경
    }
}
struct SomeView : View{
    var body : some View{
        VStack{
            Text("실제로는 이런 식으로")
            Text("별도의 뷰를 만들어서 사용하겠죠")
        }.font(.title)
    }
}
struct TabViewEx01_Previews: PreviewProvider {
    static var previews: some View {
        TabViewEx01()
    }
}
