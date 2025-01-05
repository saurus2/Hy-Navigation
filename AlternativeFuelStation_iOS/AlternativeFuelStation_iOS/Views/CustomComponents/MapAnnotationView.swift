//
//  MapAnnotationView.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

struct MapAnnotationView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack {
            Image(systemName: "mappin.circle.file")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.red)
            
            VStack(alignment: .center, spacing: 2) {
                Text(title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text(subtitle)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding(4)
            .background(Color.white.opacity(0.8))
            .cornerRadius(8)
        }
        .shadow(radius: 3)
    }
}
