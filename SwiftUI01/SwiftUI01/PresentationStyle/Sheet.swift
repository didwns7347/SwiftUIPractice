//
//  Sheet.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/11/29.
//

import SwiftUI

struct Sheet: View {
    @State private var showingSheet = false
    var body: some View {
        Button(action: {self.showingSheet.toggle()}) {
            Text("Present")
                .font(.title).foregroundColor(.blue)
        }
        .sheet(isPresented: $showingSheet, onDismiss:{print("Dissmissed")}, content: {PresentedView()})

    }
}

struct PresentedView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: {
            if self.presentationMode.wrappedValue.isPresented{
                self.presentationMode.wrappedValue.dismiss()
            }
        }){
            Text("Tap to dismiss")
                .font(.title).foregroundColor(.red)
        }
        
    }
}

struct Sheet_Previews: PreviewProvider {
    static var previews: some View {
        Sheet()
    }
}
