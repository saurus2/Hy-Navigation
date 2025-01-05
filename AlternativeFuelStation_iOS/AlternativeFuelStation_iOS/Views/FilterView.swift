//
//  FilterView.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

struct FilterView: View {
    @Binding var radius: Double
    
    var body: some View {
        VStack {
            Text("Set Search Radius")
            Slider(value: $radius, in: 0...500, step: 1)
            Text("\(Int(radius)) miles")
            Button(action: {
                print("Filter applied")
            }) {
                Text("Apply Filter")
            }
        }
        .padding()
    }
}
