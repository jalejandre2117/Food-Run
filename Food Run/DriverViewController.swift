//
//  DriverViewController.swift
//  Food Run
//
//  Created by Jorge Alejandre on 4/21/19.
//  Copyright © 2019 Jorge Alejandre. All rights reserved.
//

import UIKit
import FirebaseDatabase

class DriverViewController: UIViewController {

    @IBOutlet weak var restuarantField: UITextField!
    
    

    @IBOutlet weak var leavingRadius: UISlider!
    @IBOutlet weak var driveRadius: UISlider!
    
    let departureArray = ["0", "5", "10", "15", "20"]
    
    let drivingArray = ["0", "5", "10", "15", "20"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        let departure = departureArray[Int(leavingRadius.value)]
        let driving = drivingArray[Int(driveRadius.value)]
        let ref = Database.database().reference()
        let rest = restuarantField.text!
        ref.childByAutoId().setValue(["restuarant": rest, "departure": departure, "driveExtra": driving])
        self.performSegue(withIdentifier: "completedSegue", sender: self)
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
