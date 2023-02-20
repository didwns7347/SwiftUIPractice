//
//  MapView.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/17.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    let coordinate : CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: 2500, pitch: 0, heading: 0)
        let mark = Marker(title: "", subtitle: "", coordinate: coordinate)
        uiView.addAnnotation(mark)
        uiView.setCamera(camera, animated: true)
    }

}

