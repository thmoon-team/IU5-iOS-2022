//
//  AppDelegate.swift
//  lab4
//
//  Created by f on 19.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let initialViewController = InitialViewController()
        let navigationViewController = UINavigationController(rootViewController: initialViewController)
        navigationViewController.view.backgroundColor = .systemBackground
        
        
        window?.rootViewController = navigationViewController
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }
}

