//
//  OpacityViewController.swift
//  iOS_animation
//
//  Created by 张培栋 on 15/10/3.
//  Copyright © 2015年 张培栋. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var View1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {
            //self.View1.layer.opacity = 0.1
            self.View1.alpha = 0.1
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
