//
//  WheelPickerStyle01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct WheelPickerStyle01: View {
    @State private var selection = 2
    
    var body: some View {
        Picker("예약 인원", selection: $selection){
            HStack{
                Image(systemName: "person.fill")
                Text("1인")
            }.tag(1)
            
            HStack{
                Image(systemName: "person.2.fill")
                Text("2인")
            }.tag(2)
            
            HStack{
                Image(systemName: "person.3.fill")
                Text("3인")
            }.tag(3)
        }.padding(.horizontal)
    }
}

struct WheelPickerStyle01_Previews: PreviewProvider {
    static var previews: some View {
        WheelPickerStyle01()
    }
}
