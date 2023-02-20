//
//  ContentImagePickerView.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/17.
//

import SwiftUI

struct ContentImagePickerView: View {
    @State private var pickedImage : Image = Image(systemName: "photo")
    @State private var isPickerPresented : Bool = false
    
    var body: some View {
        VStack{
            pickedImage
                .resizable().scaledToFit()
                .frame(width: 300, height: 300)
                .padding(.bottom)
            
            Button(action: {self.isPickerPresented.toggle()}) {
                Text("Show ImagePicker").bold()
            }
        }
        .sheet(isPresented: $isPickerPresented) {
            ImagePickerView(pickedImage: self.$pickedImage)
        }
        
    }
}

struct ContentImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentImagePickerView()
    }
}
