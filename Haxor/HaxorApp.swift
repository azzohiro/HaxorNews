//
//  HaxorApp.swift
//  Haxor
//
//  Created by Azzo Hiro on 07/07/22.
//

import SwiftUI

@main
struct HaxorApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Berhasil")
        return true
    }
}
