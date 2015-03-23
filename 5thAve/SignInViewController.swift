//
//  SignInViewController.swift
//  5thAve
//
//  Created by KEEVIN MITCHELL on 3/22/15.
//  Copyright (c) 2015 Beyond 2021. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var notAmember: UIButton!

    @IBOutlet weak var passwodTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backAction(sender: UIButton) {
        self.presentingViewController?.dismissViewControllerAnimated(true , completion: nil)
        
    }

}
