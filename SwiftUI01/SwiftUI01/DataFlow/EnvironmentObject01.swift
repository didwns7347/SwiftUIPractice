//
//  EnvironmentObject01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/25.
//

import SwiftUI

struct EnvironmentObject01: View {
    var body: some View {
        SuperView().environmentObject(User())
    }
}
struct SuperView: View{
    var body: some View{
        SubView()
    }
}

struct SubView: View{
    @EnvironmentObject var user: User
    var body : some View {
        Text(user.name.description)
    }
}
struct EnvironmentObject01_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject01()
    }
}
