//
//  Alert01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/25.
//

import SwiftUI

struct Alert01: View {
    @State var showingAlert = false
    var body: some View{
        Button(action: {self.showingAlert = true}){
            Text("Alert")
        }.alert(isPresented: $showingAlert){
            Alert(title:Text("제목"),
                  message: Text("contents"),
                  primaryButton: .default(Text("확인"), action:{print("확인")}),
                  secondaryButton: .cancel(Text("취소"))
                  
            )
        }
    }
 
}

struct Alert01_Previews: PreviewProvider {
    static var previews: some View {
        Alert01()
    }
}
