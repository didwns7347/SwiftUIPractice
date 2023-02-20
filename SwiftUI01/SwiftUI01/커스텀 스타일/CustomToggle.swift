//
//  CustomToggle.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/01.
//

import SwiftUI

struct CustomToggle: View {
    @State private var isOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Toggle("기본 토글", isOn: $isOn)
            Spacer()
            Toggle("커스텀 토글", isOn: $isOn)
                .toggleStyle(CustomToggleStyle())
            Spacer()
        }
        .listStyle(.plain)
        .font(.headline)
    }
}

struct CustomToggle_Previews: PreviewProvider {
    static var previews: some View {
        CustomToggle()
    }
}
