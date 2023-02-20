//
//  ObservableObject01.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/25.
//

import SwiftUI
class User : ObservableObject{
  
    var name = "User Name"
    //원하는 시점에 변경을 알리고 싶은 경우
//    let objectWillChange = ObjectWillChangePublisher()
//    var score = 0 {
//        willSet{objectWillChange.send()}
//    }
    //변경 즉시 알리고 싶은 경우
    @Published var score = 0
}
struct ObservableObject01: View {
    @ObservedObject var user:User
    var body: some View {
        VStack(spacing: 30) {
            Text(user.name)
            Button {
                self.user.score += 1
            } label: {
                Text(user.score.description)
            }

        }
    }
}

struct ObservableObject01_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObject01(user: User())
    }
}
