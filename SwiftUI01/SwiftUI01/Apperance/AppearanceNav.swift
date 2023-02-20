//
//  AppearanceNav.swift
//  SwiftUI01
//
//  Created by yangjs on 2022/12/05.
//

import SwiftUI

struct AppearanceNav: View {
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor : UIColor.systemTeal,
            .kern : 5
        ]
        
    }
    var body: some View {
        NavigationView{
            Text("Hello world!!!!!!")
                .navigationTitle("UIAppearance")
        }
    }
}

struct AppearanceNav_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceNav()
    }
}
