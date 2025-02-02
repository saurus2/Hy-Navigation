//
//  MapViewContainer.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI
import CoreLocation
import GoogleMaps

struct MapViewContainer: View {
    @State private var searchText: String = ""
    @State private var radius: Double = 10.0
    
    // LocationManager instance
    @StateObject private var locationManager = LocationManager()
    // Google Map View instance
    @State private var mapView = GMSMapView()
    
    var body: some View {
        ZStack {
            MapView(mapView: $mapView) // connecting modified MapView
            
            VStack {
                HStack {
                    TextField("Search for area, street...", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: {
                        print("Search button tapped with text: \(searchText)")
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, 50)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack(spacing: 20) {
                        // finding current location
                        Button(action: {
                            print("current location button tapped")
                            if let userLocation = locationManager.userLocation {
                                print("현재 위치로 이동: \(userLocation.latitude), \(userLocation.longitude)")
                                    DispatchQueue.main.async {
                                        let camera = GMSCameraPosition.camera(
                                            withLatitude: userLocation.latitude,
                                            longitude: userLocation.longitude,
                                            zoom: 15.0
                                        )
                                        mapView.animate(to: camera)  // 메인 스레드에서 UI 업데이트
                                    }
                                print("현재 위치로 이동: \(userLocation.latitude), \(userLocation.longitude)")
                            } else {
                                print("cannot bring current place.")
                            }
                        }) {
                            Image(systemName: "location.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        
                        Button(action: {
                            print("Load all stations button tapped")
                        }) {
                            Image(systemName: "bolt.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        
                        Button(action: {
                            print("Profile button tapped")
                        }) {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}
