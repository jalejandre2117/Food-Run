//
//  LazyViewController.swift
//  Food Run
//
//  Created by Jorge Alejandre on 4/21/19.
//  Copyright © 2019 Jorge Alejandre. All rights reserved.
//

import UIKit
import FirebaseDatabase

class LazyViewController: UIViewController {

    @IBOutlet weak var driverLabel: UILabel!
    @IBOutlet weak var restuarantLabel: UILabel!
    @IBOutlet weak var departureLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
     
    
    
    
    func setInformation() {
        let ref = Database.database().reference()
        ref.child("-LczTZu8AaEMgi59SWqH").observeSingleEvent(of: .value)
        { (snapshot) in
            let driverInfo = snapshot.value as? [String:Any]
            
        }
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
