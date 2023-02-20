//
//  ViewModifier01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/30.
//

import SwiftUI
/**
 유사한 뷰를 만들 때마다 같은 수식어를 반복 작성하는 것이 조금 귀찮음.
 swiftUI 기본 수식어말고 커스텀으로 수식어를 작성해 사용할수 있는 기능 -> ViewModifer
 */
struct CustomViewModifier : ViewModifier{
    var borderColor : Color = .red
    
    func body(content: Content) -> some View {
        content.font(.title).foregroundColor(Color.white)
            .padding().background(Rectangle().fill(Color.gray)).border(borderColor,width: 2)
    }
}
struct ViewModifier01: View {
    var body: some View {
        VStack{
            // #1
            Text("Custom ViewModifier")
            .modifier(CustomViewModifier(borderColor: .blue))
            // #2
            ModifiedContent(content: Text("Custom ViewModifier"), modifier: CustomViewModifier(borderColor: .blue))
            
            Text("ModifierContent").background(Color.red)
        }
    }
}

struct ViewModifier01_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifier01()
    }
}
