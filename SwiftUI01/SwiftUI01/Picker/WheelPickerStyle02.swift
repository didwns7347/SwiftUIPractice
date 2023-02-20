//
//  WheelPickerStyle02.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/15.
//

import SwiftUI

struct WheelPickerStyle02: View {
    @State private var city : City = .서울
    enum City : String, CaseIterable{
        case 서울,대전,대구,부산,제주,수원,광주,성남,일산,화성,인천,목포,춘천,전주,상주,여수,창원,김천,청주,충주,여주,포천,철원,청양,남양,남원,김포
    }
    var body: some View {
        Picker("도시", selection: $city){
            ForEach(City.allCases, id: \.self){
                Text($0.rawValue).tag($0)
            }
        }
        .background(RoundedRectangle(cornerRadius: 12).stroke(Color.blue, lineWidth: 1))
        .labelsHidden()
        .padding(.horizontal)
    }
}

struct WheelPickerStyle02_Previews: PreviewProvider {
    static var previews: some View {
        WheelPickerStyle02()
    }
}
