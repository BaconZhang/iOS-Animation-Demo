//
//  LoginViewController.swift
//  iOS_animation
//
//  Created by 张培栋 on 15/10/7.
//  Copyright © 2015年 张培栋. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var Dot: UIImageView!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var Bubble5: UIImageView!
    @IBOutlet weak var Bubble4: UIImageView!
    @IBOutlet weak var Bubble3: UIImageView!
    @IBOutlet weak var Bubble2: UIImageView!
    @IBOutlet weak var Bubble1: UIImageView!
    
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
    let warningMessage = UIImageView(image: UIImage(named: "warning"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set original position
        self.Bubble1.transform = CGAffineTransformMakeScale(0, 0)
        
        self.Bubble2.transform = CGAffineTransformMakeScale(0, 0)

        self.Bubble3.transform = CGAffineTransformMakeScale(0, 0)
        
        self.Bubble4.transform = CGAffineTransformMakeScale(0, 0)
        
        self.Bubble5.transform = CGAffineTransformMakeScale(0, 0)
        
        self.Logo.transform = CGAffineTransformMakeTranslation(-500, 0)
        
        self.Dot.transform = CGAffineTransformMakeTranslation(-500, 0)
        
        self.UsernameTextField.transform = CGAffineTransformMakeTranslation(-500, 0)
        
        self.PasswordTextField.transform = CGAffineTransformMakeTranslation(-500, 0)
        
        self.LoginButton.transform = CGAffineTransformMakeTranslation(-500, 0)
        
        //set padding-left for placeholder text
        let userPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: self.UsernameTextField.frame.height))
        self.UsernameTextField.leftView = userPaddingView
        self.UsernameTextField.leftViewMode = UITextFieldViewMode.Always
        
        let passwordPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 41, height: self.PasswordTextField.frame.height))
        self.PasswordTextField.leftView = passwordPaddingView
        self.PasswordTextField.leftViewMode = UITextFieldViewMode.Always
        
        //set left image
        let userImageView = UIImageView(image: UIImage(named: "fa-user"))
        userImageView.frame.origin = CGPoint(x: 11, y: 10)
        self.UsernameTextField.addSubview(userImageView)
        
        let passwordImageView = UIImageView(image: UIImage(named: "fa-key"))
        passwordImageView.frame.origin = CGPoint(x: 11, y: 10)
        self.PasswordTextField.addSubview(passwordImageView)
        
        self.view.addSubview(warningMessage)
        self.warningMessage.frame.origin = CGPoint(x: 26, y: 372)
        self.warningMessage.frame.size = CGSize(width: 320, height: 60)
        self.warningMessage.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.Bubble1.transform = CGAffineTransformMakeScale(1, 1)
            
            self.Bubble4.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.Bubble2.transform = CGAffineTransformMakeScale(1, 1)
            
            self.Bubble3.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.Bubble5.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.Logo.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        
        UIView.animateWithDuration(2, delay: 0.4, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.Dot.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.UsernameTextField.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.6, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.PasswordTextField.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.7, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.LoginButton.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)

    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        self.LoginButton.addSubview(self.spinner)
        self.spinner.frame.origin = CGPoint(x: 34, y: 16)
        self.spinner.startAnimating()
        UIView.animateWithDuration(0.3, animations: {
            
             self.LoginButton.transform = CGAffineTransformMakeTranslation(0, 0)
            
        })
        UIView.transitionWithView(warningMessage, duration: 0.3, options: [ UIViewAnimationOptions.TransitionFlipFromBottom , UIViewAnimationOptions.CurveEaseOut ], animations: {
            
            self.warningMessage.hidden = true
            
            }, completion: nil)
        
        self.LoginButton.transform = CGAffineTransformMakeTranslation(-30, 0)
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.LoginButton.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: { _ in
                
                UIView.animateWithDuration(0.3, animations: {
                    
                    self.LoginButton.transform = CGAffineTransformMakeTranslation(0, 100)
                    self.spinner.removeFromSuperview()
                    
                    }, completion: {_ in
                        
                        UIView.transitionWithView(self.warningMessage, duration: 0.3, options: [ UIViewAnimationOptions.TransitionFlipFromTop , UIViewAnimationOptions.CurveEaseOut ], animations: {
                            
                            self.warningMessage.hidden = false
                            
                            }, completion: nil)
                        
                })
                
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
