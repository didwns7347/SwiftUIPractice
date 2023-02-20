//
//  TextFiledEvent.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct TextFiledEvent: View {
    @State private var breed = ""
    @State private var name = ""
    @State private var isValidBreed = false
    @State private var isValidName = false
    var body: some View {
        Form{
            Section(header:Text("반려견 등록")){
                TextField("견종", text: $breed, onEditingChanged: { editing in
                    self.isValidBreed  = editing ? false : !self.breed.isEmpty
                }){
                    self.breed = self.breed.trimmingCharacters(in: .whitespaces)
                }.overlay(validationImage(isValidBreed), alignment: .trailing)
                
                TextField("이름", text: $name, onEditingChanged: {editing in
                    self.isValidName = editing ? false : !self.name.isEmpty
                }){
                    self.name = self.name.trimmingCharacters(in: .whitespaces)
                }.overlay(validationImage(isValidName), alignment: .trailing)
                
                if isValidBreed, isValidName{                    Button("등록!"){print("등록하기")}
                        .frame(maxWidth: .infinity)
                }
                
            }
        }
    }
    
    func validationImage(_ isValid: Bool) -> some View{
        Image(systemName: isValid ? "checkmark" :"pencil")
            .foregroundColor(isValid ? Color.green : Color.primary)
            .font(Font.system(.headline))
    }
    
}

struct TextFiledEvent_Previews: PreviewProvider {
    static var previews: some View {
        TextFiledEvent()
    }
}
