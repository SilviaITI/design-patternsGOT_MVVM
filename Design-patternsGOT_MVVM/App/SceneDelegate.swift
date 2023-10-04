//
//  SceneDelegate.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene  = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        let splashView = SplashViewController()
        let navigationController = UINavigationController(rootViewController: splashView)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }

}

