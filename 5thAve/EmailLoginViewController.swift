//
//  EmailLoginViewController.swift
//  5thAve
//
//  Created by KEEVIN MITCHELL on 3/21/15.
//  Copyright (c) 2015 Beyond 2021. All rights reserved.
//

import UIKit

class EmailLoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var signUpViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var signupviewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var comfirmPasswordField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBAction func backAction(sender: AnyObject) {
       self.presentingViewController?.dismissViewControllerAnimated(true , completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.enabled = false
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        comfirmPasswordField.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "theKeyboardAppeared", name: UIKeyboardDidShowNotification, object: view.window)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "theKeyBoardLeft", name: UIKeyboardDidHideNotification, object: view.window)

       
    }
    
    
 
    @IBAction func signInPressed(sender: UIButton) {
    }
    
    
func theKeyboardAppeared(){
    
    
    
    UIView.animateWithDuration(0.9, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
        self.signupviewTopConstraint.constant = 100
        self.view.layoutIfNeeded()
        }, completion: nil)
    
    
    
    
    
    }
    
    func theKeyBoardLeft(){
        
       // signupviewTopConstraint.constant = 199
        
        UIView.animateWithDuration(0.9, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.signupviewTopConstraint.constant = 199
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   /*
    // MARK: - TextField

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   // MARK: - TextField
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField == comfirmPasswordField{
        comfirmPasswordField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        switch (textField){
        case emailTextField:
       passwordTextField.becomeFirstResponder()
        case passwordTextField:
        comfirmPasswordField.becomeFirstResponder()
            signUpButton.enabled = true
            
        break;
            
        default:
            break;
            
            
        }
    }
    
    
}
