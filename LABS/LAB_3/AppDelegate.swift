//
//  AppDelegate.swift
//  lab3
//
//  Created by  on 09.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
    
        let initialViewController = InitialViewController()
        let navigationViewController = UINavigationController(rootViewController: initialViewController)
        navigationViewController.view.backgroundColor = .white
        
        window?.rootViewController = navigationViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}
