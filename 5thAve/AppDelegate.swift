//
//  AppDelegate.swift
//  5thAve
//
//  Created by KEEVIN MITCHELL on 3/21/15.
//  Copyright (c) 2015 Beyond 2021. All rights reserved.
//

import UIKit
//import Parse
//import Facebook

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, NSURLConnectionDataDelegate, UITabBarControllerDelegate {

    var window: UIWindow?
 private   let home = Main5THViewController()
    private let welcome = LoginViewController()
    
    
    
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Logs 'install' and 'app activate' App Events.
       // [FBAppEvents activateApp];
        FBAppEvents.activateApp()
        
        
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //MARK: Facebook
     func application(application: UIApplication,
        openURL url: NSURL,
         sourceApplication: String?,
         annotation: AnyObject?) -> Bool{
            // attempt to extract a token from the url
           // return [FBAppCall handleOpenURL:url sourceApplication:sourceApplication];
            return FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication)
            
    }
    
    //MARK: Public API
    func presentLoginViewController(){
        
    }
    
    func presentLoginViewController(animated:Bool){
        
    }
    
    func logOut(){
        
    }
    
    func autofollowers(){
        
    }
    
    func presentTabBarController(){
        
    }

    


}

