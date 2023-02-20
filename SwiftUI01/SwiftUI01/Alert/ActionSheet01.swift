//
//  ActionSheet01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/14.
//

import SwiftUI

struct ActionSheet01: View {
    @State var showingActionSheet = true
    var body: some View {
        Button(action:{self.showingActionSheet = true}){
            Text("ActionSheet")
        }.actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(
                title: Text("제목"),
                message: Text("내용"),
                buttons: [
                    .default(Text("버튼1")),
                    .default(Text("버튼2")),
                    .default(Text("버튼3")),
                    .default(Text("버튼4")),
                    .default(Text("버튼5")),
                    .cancel(Text("취소"))
                ]
            )
        }
    }
}

struct ActionSheet01_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet01()
    }
}
