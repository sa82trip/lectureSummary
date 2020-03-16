//
//  AppDelegate.swift
//  summary
//
//  Created by Joonsung Gil on 2020/03/14.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: Coordinatable?
    
    //    let rootCoordinator =  RootCoordinator()
//    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let navigationController = UINavigationController()
        
        coordinator = RootCoordinator(navigationController)
        coordinator?.activate()
        
        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
        
        //        print("application")
//        // Override point for customization after application launch.
//        window = UIWindow(frame: UIScreen.main.bounds)
//        rootCoordinator.startFlow(in: window)
//
//        return true
    }

    // MARK: UISceneSession Lifecycle
    
   

}

