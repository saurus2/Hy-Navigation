//
//  SearchBar.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.leading, 8)
            
            Button(action: {
                print("Search button tapped with text: \(text)")
            }) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.blue)
            }
            .padding(.trailing, 8)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}
