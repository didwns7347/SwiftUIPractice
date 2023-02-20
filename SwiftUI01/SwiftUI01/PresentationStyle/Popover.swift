//
//  Popover.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/29.
//

import SwiftUI

struct Popover: View {
    @State var showingPopover = false
    
    var body: some View {
        VStack{
            Button(action: {self.showingPopover.toggle()}) {
                Text("Popover button").font(.largeTitle)
            }
        }.popover(isPresented: $showingPopover,
                  attachmentAnchor: .rect(.bounds),
                  arrowEdge: .top,
                  content: popoverContents)
    }
    
    func popoverContents() -> some View{
        VStack(alignment: .leading) {
            HStack{
                Button(action:{self.showingPopover = false}){
                    Text("Cancel").foregroundColor(.red)
                }
                Spacer()
                Text("New Event").font(.headline)
                Spacer()
                Button("Add(+)"){}
            }
            Divider().padding(.bottom, 8)
            
            Text("Title")
            TextField("제목", text: .constant(""))
            Text("Contents")
            TextField("내용", text:.constant(""))
            Spacer()
        }
        .padding()
    }
}

struct Popover_Previews: PreviewProvider {
    static var previews: some View {
        Popover()
    }
}
