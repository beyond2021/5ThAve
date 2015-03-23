//
//  FBLoginViewController.swift
//  
//
//  Created by KEEVIN MITCHELL on 3/23/15.
//
//

import UIKit


class FBLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        FBLoginView *loginView = [[FBLoginView alloc] init];
//        loginView.center = self.view.center;
//        [self.view addSubview:loginView];
        
      let loginView = FBLoginView()
        loginView.center = self.view.center
        self.view.addSubview(loginView)
        
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
