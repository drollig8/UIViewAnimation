//
//  ViewController.swift
//  AnimationTest2
//
//  Created by Marc Felden on 28.06.16.
//  Copyright © 2016 Timm Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    var boxIsVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    var originalX:CGFloat = 0.0
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        originalX = self.myView.frame.origin.x
        if boxIsVisible == false {
           self.myView.center.x -= 200
        }
    }

    
    @IBAction func slideInAction(sender: AnyObject) {
        UIView.animateWithDuration(3.0, animations: {
            self.myView.center.x = self.originalX
                 self.boxIsVisible = true
            
        })
}

    @IBAction func slideOutAction(sender: AnyObject) {
        UIView.animateWithDuration(3.0, animations: {
            self.myView.center.x = -200
                 self.boxIsVisible = false
        })
    }
}

