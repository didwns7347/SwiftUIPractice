//
//  TransitionEx01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/07.
//

import SwiftUI
/**
 트랜지션은 뷰 계층 구조에 새로운 뷰가 추가되거나 기존에 있떤 것이 제거 될 때 적용되는
 애니메이션의 한종류입니다.  뷰 계층 구조에 변화가 생겨야함. 동일 뷰의 내용이 바뀌는 경우에는 동작하지 않음.
 */
struct TransitionEx01: View {
    @State private var showText = false
    var body: some View {
        VStack{
            if showText{
                Text("Transition")
                    .font(.largeTitle)
                    .padding()
                    .transition(.modifier(active: CustomScaleModifier(scale: 1), identity: CustomScaleModifier(scale: 2)))
                    //.transition(myTransition)
                //opacity, scale, slide, move, offset
                //combine을 통해 결합도 가능함.
            }
            
            Button("Display Text On / Off"){
//                self.showText.toggle()
                withAnimation {
                    self.showText.toggle()
                }
            }.font(.title)
        }
    }
    
    var myTransition: AnyTransition{
        let insertion = AnyTransition.offset(x:300, y:-300)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .leading)
        return .asymmetric(insertion: insertion, removal: removal)
    }
    
    
}

struct TransitionEx01_Previews: PreviewProvider {
    static var previews: some View {
        TransitionEx01()
    }
}

struct CustomScaleModifier : ViewModifier{
    let scale : CGFloat
    func body(content: Content) -> some View {
        content.scaleEffect(scale)
    }
}

extension AnyTransition{
    static var customScale : AnyTransition{
        AnyTransition.modifier(active: CustomScaleModifier(scale: 0), identity: CustomScaleModifier(scale: 1 ))
    }
}
