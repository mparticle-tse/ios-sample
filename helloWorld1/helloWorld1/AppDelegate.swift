//
//  AppDelegate.swift
//  helloWorld1
//
//  Created by Sue Chung on 10/23/19.
//  Copyright © 2019 Sue Chung. All rights reserved.
//

import UIKit
import mParticle_Apple_SDK
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        //initialize mParticle
        let options = MParticleOptions(key: "APPKEY",
                                             secret: "APPSECRET")
        
//        let identityRequest = MPIdentityApiRequest.withEmptyUser()
//        identityRequest.email = "customer3@example.com"
//        identityRequest.customerId = "customer3"
//        options.identifyRequest = identityRequest
        
        //verbosity
        options.logLevel = MPILogLevel.verbose
        
        //production
        //options.environment = MPEnvironment.production;

        MParticle.sharedInstance().start(with: options)

        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

