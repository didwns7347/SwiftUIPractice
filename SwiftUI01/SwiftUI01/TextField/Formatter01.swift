//
//  Formatter01.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct Formatter01: View {
    @State private var name : PersonNameComponents = {
        var comp = PersonNameComponents()
        comp.givenName = "Steve"
        comp.familyName = "Jobs"
        return comp
    }()
    
    @State private var date : Date = Date()
    @State private var number : Double = 0.5
    
    var body: some View {
        let nameFormatter = PersonNameComponentsFormatter()
        nameFormatter.style = .short
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY.MM.DD"
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
        
        return Form{
            TextField("Name", value:$name, formatter: nameFormatter)
            TextField("Date", value: $date , formatter: dateFormatter)
            TextField("Number",value: $number, formatter: numberFormatter)
        }.textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct Formatter01_Previews: PreviewProvider {
    static var previews: some View {
        Formatter01()
    }
}
