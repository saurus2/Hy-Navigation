//
//  AlternativeFuelStation_iOSApp.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import SwiftUI

@main
struct AlternativeFuelStation_iOSApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate // AppDelegate connect
    var body: some Scene {
        WindowGroup {
            ContentView() // Starting app point
        }
    }
}
