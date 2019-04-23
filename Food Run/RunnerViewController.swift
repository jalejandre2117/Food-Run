//
//  RunnerViewController.swift
//  Food Run
//
//  Created by Jorge Alejandre on 4/20/19.
//  Copyright © 2019 Jorge Alejandre. All rights reserved.
//

import UIKit

class RunnerViewController: UIViewController {

    @IBOutlet weak var driverButton: UIButton!
    @IBOutlet weak var lazyButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
    }
    
    func assignbackground(){
        let background = UIImage(named: "bananas")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        //imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        roundButtons()
    
    }
    
    func roundButtons() {
        driverButton.layer.cornerRadius = 20
        lazyButton.layer.cornerRadius = 20
    }
    
    @IBAction func onDriver(_ sender: Any) {
        self.performSegue(withIdentifier: "driverSegue", sender: self)
    }
    
    @IBAction func onLazy(_ sender: Any) {
        self.performSegue(withIdentifier: "lazySegue", sender: self)
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
