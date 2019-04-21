//
//  LoginViewController.swift
//  Food Run
//
//  Created by Jorge Alejandre on 4/20/19.
//  Copyright © 2019 Jorge Alejandre. All rights reserved.
//

import UIKit
import FirebaseUI

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogin(_ sender: Any) {
        
        // Get the default auth UI object
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            // log the error
            return
        }
        // Set ourselves as the delegate
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
        // Get a reference to the auth UI view controller
        let authViewController = authUI!.authViewController()
        // Show it
        present(authViewController, animated: true, completion: nil)
    }
    
}
    extension UIViewController: FUIAuthDelegate {
        
        public func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
            
            // Check if there was an error
            //if error = nil
            if error != nil {
                // Log the error
                return
        }
            
            performSegue(withIdentifier: "loginSegue", sender: self)
        
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
