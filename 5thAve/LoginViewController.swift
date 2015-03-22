//
//  LoginViewController.swift
//  5thAve
//
//  Created by KEEVIN MITCHELL on 3/22/15.
//  Copyright (c) 2015 Beyond 2021. All rights reserved.
//

enum UIUserInterfaceIdiom : Int {
    case Unspecified
    
    case Phone // iPhone and iPod touch style UI
    case Pad // iPad style UI
}

import UIKit

class LoginViewController: UIViewController {

    @IBAction func facebookLogin(sender: UIButton) {
    }
    
    @IBOutlet weak var instagramLogin: UIButton!
    
    @IBOutlet weak var fbAlignCenter: NSLayoutConstraint!
    
    @IBOutlet weak var fbButtonWidth: NSLayoutConstraint!
    
    @IBOutlet weak var fbButtonHeight: NSLayoutConstraint!
    
    
    
  @IBOutlet weak var instagramAlignCenter: NSLayoutConstraint!
    
    @IBOutlet weak var instagramButtonHeight: NSLayoutConstraint!
    
    @IBOutlet weak var instagramButtonWidthg: NSLayoutConstraint!
    
    
    @IBOutlet weak var emailButtonWidth: NSLayoutConstraint!
    
    
    @IBOutlet weak var emailbuttonHeight: NSLayoutConstraint!
    
    
    
    
    @IBOutlet weak var emailAlignCenter: NSLayoutConstraint!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
      
    }
    
    
    func animateButtons(){
        UIView.animateWithDuration(0.9, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.fbAlignCenter.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, options: .CurveEaseOut, animations: {
            self.instagramAlignCenter.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: .CurveEaseOut, animations: {
            self.emailAlignCenter.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            }, completion: nil)

        
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        animateButtons()
        
        
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
       fbAlignCenter.constant -= view.bounds.width
        instagramAlignCenter.constant -= view.bounds.width
        emailAlignCenter.constant -= view.bounds.width
       // loginButton.alpha = 0.0
        
       // animateButtons()
    }
    override func viewDidDisappear(animated: Bool) {
        //fbAlignCenter.constant -= view.bounds.width
       // instagramAlignCenter.constant -= view.bounds.width
      //  emailAlignCenter.constant -= view.bounds.width

    }

    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
