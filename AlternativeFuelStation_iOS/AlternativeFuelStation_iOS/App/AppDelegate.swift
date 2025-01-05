//
//  AppDelegate.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import UIKit
import GoogleMaps

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyAMiG8AViwFVGsDis28K2qmKtJldcDVork") // Google Maps API Key 설정
        return true
    }
}
