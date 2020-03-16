//
//  WelcomeViewController.swift
//  summary
//
//  Created by Joonsung Gil on 2020/03/14.
//

protocol WelcomeViewFlowDelegate: class {
    func join()
    //func gps()
}
import UIKit

class WelcomeViewController: UIViewController {
    
    weak var delegate: WelcomeViewFlowDelegate?
    
    //var welcomViewCoordinator = WelcomeViewCoordinator()
    //var joinCoordinator: JoinCoordinator?
    var window: UIWindow?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func joinButtonTapped(_ sender: UIButton) {
        
        delegate?.join()
        
        print("welcomeControll:::join")
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


