//
//  JoinCoordinator.swift
//  summary
//
//  Created by Joonsung Gil on 2020/03/16.
//

import Foundation
import UIKit

class JoinCoordinator: Coordinatable {
    
    private var navigationController: UINavigationController
       
       init(_ navigationController: UINavigationController) {
           self.navigationController = navigationController
       }
       
       func activate() {
        print("joincoordinator activate")
           let joinViewController = JoinViewController() // --- 2
           navigationController.pushViewController(joinViewController, animated: true)
       }
    
}


