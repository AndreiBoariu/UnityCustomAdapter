//
//  AppDelegate.swift
//  CustomAdapterIOS
//
//  Created by Boariu Andy on 14.11.2024.
//

import UIKit
import IronSource

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // Create a request builder with app key and ad formats. Add User ID if available
        let requestBuilder = LPMInitRequestBuilder(appKey: "appKey")
            .withLegacyAdFormats([IS_REWARDED_VIDEO])
            .withUserId("UserId")
        // Build the initial request
        let initRequest = requestBuilder.build()
        // Initialize LevelPlay with the prepared request
        LevelPlay.initWith(initRequest)
        { config, error in
            if let error = error {
                // There was an error on initialization. Take necessary actions or retry
            } else {
                // Initialization was successful. You can now create ad objects and load ads or perform other tasks
            }
        }

        ISIntegrationHelper.validateIntegration()

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

