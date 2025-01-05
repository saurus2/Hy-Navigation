//
//  MapView.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: 10.0)
        return GMSMapView.map(withFrame: .zero, camera: camera)
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        
    }
}
