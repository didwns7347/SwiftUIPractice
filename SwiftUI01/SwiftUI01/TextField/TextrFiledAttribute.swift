//
//  TextrFiledAttribute.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct TextrFiledAttribute: View {
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        Form{
            HStack{
                Image(systemName: "envelope").frame(width: 30)
                TextField("이메일", text: $email)
            }.frame(height: 50)
            HStack{
                Image(systemName: "lock").frame(width: 30)
                SecureField("비밀번호", text: $password)
            }
        }.textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TextrFiledAttribute_Previews: PreviewProvider {
    static var previews: some View {
        TextrFiledAttribute()
    }
}
