//
//  LocationManager.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 2/2/25.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private var locationManager = CLLocationManager()
    
    @Published var userLocation: CLLocationCoordinate2D? // variable for saving place data
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // setting accuracy
        // requesting place permit during using app
        // starting updating place
        // 권한 요청 및 위치 서비스 확인
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestWhenInUseAuthorization()
        } else {
            print("disabled the place finding.")
        }
    }
    
    // updating place function
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        DispatchQueue.main.async {
            self.userLocation = location.coordinate
            print("현재 위치: \(location.coordinate.latitude), \(location.coordinate.longitude)")
        }
    }
    
    // detecting permit status changing
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if manager.authorizationStatus == .authorizedWhenInUse || manager.authorizationStatus == .authorizedAlways {
            manager.startUpdatingLocation()
        } else if manager.authorizationStatus == .denied {
            print("Deny place permition.")
        }
    }
    
    // failed updating place function
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Failed updating place: \(error.localizedDescription)")
    }
}
