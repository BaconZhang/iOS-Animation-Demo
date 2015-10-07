//
//  PositionViewController.swift
//  iOS_animation
//
//  Created by 张培栋 on 15/10/3.
//  Copyright © 2015年 张培栋. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View3: UIView!
    
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
            self.View1.center.x = 300
            
        })
        
        UIView.animateWithDuration(1, delay: 2, options: .CurveEaseOut, animations: {
            self.View3.center.x = 220
            self.View3.center.y = 340
            }, completion: nil)
        UIView.animateWithDuration(1, delay: 1, options: .CurveEaseOut, animations: {
            self.View2.center.y = 420
            }, completion: nil)

        
  

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
