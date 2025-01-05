//
//  SearchListView.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

struct SearchListView: View {
    var places: [String] = ["Station 1", "Station 2", "Station 3"]
    
    var body: some View {
        List(places, id: \.self) { place in
            HStack {
                Image(systemName: "location.circle")
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text(place)
                        .font(.headline)
                    Text("123 Main Street, City, State")
                        .font(.subheadline)
                }
            }
        }
    }
}
