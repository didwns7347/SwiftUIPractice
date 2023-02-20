//
//  Form01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct Form01: View {
    @State private var brightness : CGFloat = 0.5
    @State private var isTrueTone = true
    @State private var canRaiseToWake = true
    @State private var autoLock = "30 Seconds"
    private let autoLockOptions = ["30 Seconds", "2 Minute", "Never"]
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("밝기"), footer: Text("iPhone 디스플레이를 주변광에 맞춰 색상이 다른 환경에서도 일관되게 보이도록 자동 조정합니다.")) {
                    Slider(value: $brightness,
                           minimumValueLabel: Image(systemName: "sun.min.fill"),
                           maximumValueLabel: Image(systemName: "sum.max.fill")
                    ){
                        Text("밝기조절")
                    }
                    Toggle("True Tone", isOn: $isTrueTone)
                }
                
                Section{
                    Picker("자동 잠금", selection: $autoLock){
                        ForEach(autoLockOptions, id: \.self){
                            Text($0)
                        }
                    }
                    Toggle("들어서 깨우기", isOn: $canRaiseToWake)
                }
            }.navigationBarTitle("디스플레이 및 밝기", displayMode:.inline)
        }
    }
}

struct Form01_Previews: PreviewProvider {
    static var previews: some View {
        Form01()
    }
}
