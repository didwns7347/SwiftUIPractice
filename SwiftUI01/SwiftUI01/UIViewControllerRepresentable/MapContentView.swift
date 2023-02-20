//
//  MapContentView.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/17.
//

import SwiftUI
import MapKit

struct MapContentView: View {
    @State private var coorinate = CLLocationCoordinate2DMake(37.551416, 126.988194)
    let locations : [String:CLLocationCoordinate2D] = [
        "남산" : CLLocationCoordinate2DMake(37.551416, 126.988194),
        "시청" : CLLocationCoordinate2DMake(37.566308, 126.977948),
        "국회" : CLLocationCoordinate2DMake(37.566308, 126.914187),
        "사당집" : CLLocationCoordinate2DMake(37.480124, 126.973230)
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            MapView(coordinate: coorinate)
            HStack(spacing:30){
                ForEach(["남산","시청","국회","사당집"], id:\.self){ location in
                    Button(action: { self.coorinate = self.locations[location]! }) {
                        Text(location)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
                }
            }
            .padding(.bottom,40)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView()
    }
}
