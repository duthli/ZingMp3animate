//
//  ViewController.swift
//  ZingMp3animate
//
//  Created by do duy hung on 14/08/2016.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_text: UILabel!
    
    @IBOutlet weak var logo: UIImageView!
    var timer = NSTimer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logo!.alpha = 0
        self.lbl_text!.alpha = 0
        timer = NSTimer.scheduledTimerWithTimeInterval(0.2,target: self, selector: #selector(viewWillAppear),userInfo: nil,repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear( animated : Bool){
        super.viewWillAppear(animated)
        UIView.animateWithDuration(2, animations: {
            self.logo!.alpha = 1
        })
        {
            (finished) in UIView.animateWithDuration(1, animations:
                {
                    self.lbl_text!.center = CGPointMake(self.logo!.center.x, 8.0)
                    self.lbl_text!.alpha = 1

            })
        
        }
    }
}

