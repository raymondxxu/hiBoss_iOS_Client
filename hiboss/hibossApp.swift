//
//  hibossApp.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-03.
//

import SwiftUI
//import FirebaseCore
//import FirebaseAuth
//import GoogleSignIn
//import FacebookCore

//class AppDelegate: NSObject, UIApplicationDelegate {
////    func application(_ application: UIApplication,
////                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//////        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
//////        FirebaseApp.configure()
////        return true
////    }
////    
////    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
////        return GIDSignIn.sharedInstance.handle(url)
////    }
////    
////    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any], sourceApplication: String?, annotation: Any) -> Bool {
////        ApplicationDelegate.shared.application(app, open: url, sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
////                                               annotation: options[UIApplication.OpenURLOptionsKey.annotation])
////    }
////}


@main
struct hibossApp: App {
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @State var shouldShowLandingPage: Bool = false
    
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Label("dashboard", systemImage: "house")
                    }
                
                SayHiTrackerView()
                    .tabItem {
                        Label("discover", systemImage: "globe")
                    }
                
                MessagelistView ()
                    .tabItem {
                        Label("message", systemImage: "bubble")
                    }
                
                SayHiTrackerView ()
                    .tabItem {
                        Label("me", systemImage: "person")
                    }
            }
        }
    }
}

#Preview {
    TabView {
        HomeView()
            .tabItem {
                Label("dashboard", systemImage: "house")
            }
        
        SayHiTrackerView()
            .tabItem {
                Label("discover", systemImage: "globe")
            }
        
        MessagelistView ()
            .tabItem {
                Label("message", systemImage: "bubble")
            }
        
        SayHiTrackerView ()
            .tabItem {
                Label("me", systemImage: "person")
            }
    }
}
