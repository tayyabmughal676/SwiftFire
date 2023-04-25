//
//  SwiftFireApp.swift
//  SwiftFire
//
//  Created by Thor on 24/04/2023.
//

import SwiftUI
import FirebaseCore


@main
struct SwiftFireApp: App {
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    //    init() {
    //        FirebaseApp.configure()
    //        print("Firebase App Initilizing...")
    //    }
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
