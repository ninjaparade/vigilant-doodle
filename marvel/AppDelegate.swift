//
//  AppDelegate.swift
//  marvel
//
//  Created by Yaz Jallad on 2019-04-23.
//  Copyright © 2019 Yaz Jallad. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let api = APIClient(accessKey: "", secretKey: "")
        api.getUsers { result in
            switch result {
            case .success(let users):
                print(users.data.count)
            case .failure(let error):
                print(error)
            }
            
        }
        // Override point for customization after application launch.
        return true
    }
}

