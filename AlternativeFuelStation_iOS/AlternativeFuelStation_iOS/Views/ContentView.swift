//
//  ContentView.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MapViewContainer()
                .navigationBarTitle("Alternative Fuel Stations") // 네비게이션 제목 설정
        }
    }
}
