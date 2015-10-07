//
//  EasingViewController.swift
//  iOS_animation
//
//  Created by 张培栋 on 15/10/4.
//  Copyright © 2015年 张培栋. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View2: UIView!
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
        UIView.animateWithDuration(1, delay: 0, options: [UIViewAnimationOptions.CurveLinear, UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: {
            self.View1.transform = CGAffineTransformMakeTranslation(200, 0)
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: [UIViewAnimationOptions.CurveEaseIn, UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: {
            self.View2.transform = CGAffineTransformMakeTranslation(200, 0)
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: [UIViewAnimationOptions.CurveEaseInOut, UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: {
            self.View3.transform = CGAffineTransformMakeTranslation(200, 0)
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: [UIViewAnimationOptions.CurveEaseOut, UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: {
            self.View4.transform = CGAffineTransformMakeTranslation(200, 0)
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
