//
//  ViewController.swift
//  AnimatingLabel
//
//  Created by Rocky on 5/2/17.
//  Copyright © 2017 Rocky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        label.center.x = view.center.x // Place it in the center x of the view.
        label.center.x = view.bounds.height // Place it on the left of the view with the width = the bounds'width of the view.
        // animate it from the left to the right
        UIView.animate(withDuration: 10.0, delay: 0, options: [.curveEaseIn, .curveEaseOut], animations: {
            self.label.center=CGPoint(x: self.view.frame.height/2, y: self.view.frame.width/2)
        }, completion: nil)
    
    
    
    }
    
    

}

