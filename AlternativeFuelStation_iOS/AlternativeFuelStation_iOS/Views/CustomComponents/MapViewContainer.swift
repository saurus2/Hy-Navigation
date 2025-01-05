//
//  MapViewContainer.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

struct MapViewContainer: View {
    @State private var searchText: String = ""
    @State private var radius: Double = 10.0
    
    var body: some View {
        ZStack {
            MapView()
            
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
                        Button(action: {
                            print("Navigate button tapped")
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
