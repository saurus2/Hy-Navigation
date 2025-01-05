//
//  SceneDelegate.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: ContentView()) // App starting screen setting
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
