//
//  RotationViewController.swift
//  iOS_animation
//
//  Created by 张培栋 on 15/10/3.
//  Copyright © 2015年 张培栋. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var ImageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func spin(){
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: {
            self.ImageView1.transform = CGAffineTransformRotate(self.ImageView1.transform, CGFloat(M_PI))
            }) { (finished) -> Void in
                self.spin()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        self.spin()
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
