//
//  SceneDelegate.swift
//  Expense Tracker
//
//  Created by Ekaterina Volobueva on 15.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let viewController = MainPageModuleBuilder.build()
        self.window = UIWindow(windowScene: windowScene)
        self.window?.rootViewController = viewController
        self.window?.makeKeyAndVisible()
    }
}