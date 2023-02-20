//
//  UISwitchAppearnce.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/14.
//

import SwiftUI

struct UISwitchAppearnce: View {
    @State private var isOn = true
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("UISwitch에 대한 색상 변경")
        }.onAppear{
            UISwitch.appearance().onTintColor = .red
            UISwitch.appearance().thumbTintColor = .green
        }
        
    }
}

struct UISwitchAppearnce_Previews: PreviewProvider {
    static var previews: some View {
        UISwitchAppearnce()
    }
}
