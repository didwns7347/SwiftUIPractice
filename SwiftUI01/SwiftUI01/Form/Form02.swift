//
//  Form02.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct Form02: View {
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("뷰").font(.headline)){
                    Text("텍스트")
                    Image(systemName:  "gear").font(.title)
                    Rectangle()
                    Color.gray
                }
                Section(header: Text("컨트롤").font(.headline)){
                    Button("버튼"){}
                    TextField("플레이스 폴더", text: .constant("텍스트 필드"))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("플레이스 홀더", text: .constant("시큐어 필드"))
                    Slider(value: .constant(0.5))
                    Toggle("토글", isOn: .constant(true))
                    Stepper("스테퍼", onIncrement:{}, onDecrement: {})
                    Picker("피커", selection: .constant("옵션")){Text("옵션").tag("옵션")}
                    DatePicker(selection: .constant(Date())) {
                        Text("DatePicker")
                    }
                }
            }
        }.navigationBarTitle("폼 - 뷰 & 컨트롤")
    }
}

struct Form02_Previews: PreviewProvider {
    static var previews: some View {
        Form02()
    }
}
