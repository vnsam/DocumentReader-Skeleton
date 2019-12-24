//
//  AppDelegate.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        
        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
          let url = userActivity.webpageURL,
          let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
            return false
        }
        
        /*... build deeplink from `components`*/
        
        /*... validate and return*/
        
        presentViewController(forDeeplink: Deeplink.init()) // implement from - `components`
        
        return true
    }
}

extension AppDelegate: DeeplinkPresenter {
    func presentViewController(forDeeplink deeplink: Deeplink) {
        /*... implementation*/
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationVC = storyboard.instantiateViewController(withIdentifier: "NavigationController") as! UINavigationController
        
        let viewController = DeeplinkViewControllerFactory.viewController(forDeeplink: deeplink)
        
        navigationVC.pushViewController(viewController, animated: true)
    }
}
