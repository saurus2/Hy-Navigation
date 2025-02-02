//
//  MapView.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    // adding binding
    @Binding var mapView: GMSMapView
    
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: 10.0)
        mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.mapView = mapView
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        
    }
}
