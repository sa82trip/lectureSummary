//
//  RootCoordinator.swift
//  summary
//
//  Created by Joonsung Gil on 2020/03/14.
//

import Foundation
import UIKit

class RootCoordinator: Coordinatable {
    private var navigationController: UINavigationController
        private var welcomeCoordinator: Coordinatable
        init(_ navigationController: UINavigationController) {
            self.navigationController = navigationController
            self.welcomeCoordinator = WelcomeViewCoordinator(navigationController) // --- 1
        }
        
        func activate() {
            print("root")
            welcomeCoordinator.activate()
        }
    }
    
   
//    var window: UIWindow?
//    var welcomeViewCoordinator: WelcomeViewCoordinator?
//    var testScreenViewCoordinator: TestScreenCoordinator?
//    private var navigationController: UINavigationController
//
//    init(_ navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//    func startFlow(in window: UIWindow?) {
//        print("RootCoordinator")
//        self.window = window
//        changeRootViewControllerToJoin()
//
//    }
//
//    func startFlow(in navigation: UINavigationController) { }
//
//    func changeRootViewControllerToJoin() {
////        testScreenViewCoordinator = TestScreenCoordinator()
////        testScreenViewCoordinator?.coordinatorDelegate = self
////        testScreenViewCoordinator?.startFlow(in: window)
//        welcomeViewCoordinator = WelcomeViewCoordinator(navigationController)
//        welcomeViewCoordinator?.coordinatorDelegate = self
//        welcomeViewCoordinator?.startFlow(in: window)
//    }

extension UIWindow {
    public func change(rootViewController: UIViewController, WithAnimation animation: Bool){
        self.rootViewController = rootViewController
        rootViewController.view.alpha = animation ? 0 : 1
        makeKeyAndVisible()
        guard animation else { return }
        UIView.animate(withDuration: 0.3) { rootViewController.view.alpha = 1 }
    }
}


