//
//  WelcomeViewCoordinator.swift
//  summary
//
//  Created by Joonsung Gil on 2020/03/14.
//  
//

import Foundation
import UIKit
class WelcomeViewCoordinator:Coordinatable {
    private var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func activate() {
        print("welcomeCoordi")
        let welcomeViewController = WelcomeViewController() // --- 2
        welcomeViewController.delegate = self
        navigationController.pushViewController(welcomeViewController, animated: true)
    }
    
    
    //    var window: UIWindow?
//    private var navigationController: UINavigationController
//    public weak var coordinatorDelegate: WelcomeViewCoordinatorDelegate?
//
//
//   init(_ navigationController: UINavigationController) {
//       self.navigationController = navigationController
//   }
//
//    func startFlow(in window: UIWindow?) {
//        var welcomeViewController = WelcomeViewController()
//        self.window = window
//        window?.change(rootViewController: welcomeViewController, WithAnimation: true)
//    }
//
//    func startFlow(in navigationController: UINavigationController) {
//        navigationController.popToRootViewController(animated: true)
//    }
    
    
}
extension WelcomeViewCoordinator: WelcomeViewFlowDelegate {
    func join() {
        print("WelcomeViewCoordinator　extension")
        let joinCoordinator = JoinCoordinator(navigationController)
        joinCoordinator.activate()
    }
    
   
}

