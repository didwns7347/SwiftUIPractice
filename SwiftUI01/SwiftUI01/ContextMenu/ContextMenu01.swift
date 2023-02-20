//
//  ToDo.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI
struct Todo{
    let id : Int
    let title : String = "To Do"
    var isCompleted : Bool = false
    init(id:Int){self.id = id}
}
struct ContextMenu01: View {
    @State private var toDoList = Array(1...10).map(Todo.init(id:))
    
    var body: some View {
        List(Array(toDoList.enumerated()), id: \.offset){ (index,toDo) in
            HStack{
                Text("\(toDo.title) \(toDo.id)")
                Spacer()
                Text(toDo.isCompleted ? "✅":"")
            }
            .font(.title)            .frame(height: 50)
            .contextMenu{
                Button("완료"){self.toDoList[index].isCompleted = true}
                Button {
                    self.toDoList.remove(at: index)
                } label: {
                    Text("삭제").foregroundColor(.red)
                }

            }
            
        }
    }
}

struct ContextMenu01_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu01()
    }
}
