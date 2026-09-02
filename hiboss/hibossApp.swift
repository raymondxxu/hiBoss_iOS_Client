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
                        Label("dashboard", image: "dashboard")
                    }
                
                SayHiTrackerView()
                    .tabItem {
                        Label("discover", image: "discover")
                    }
                
                MessageListView()
                    .tabItem {
                        Label("message", image: "message")
                    }
                
                MyProfile()
                    .tabItem {
                        Label("me", image: "me")
                    }
            }
        }
    }
}

#Preview {
    TabView {
        HomeView()
            .tabItem {
                Label("dashboard", image: "dashboard")
            }
        SayHiTrackerView()
            .tabItem {
                Label("discover", image: "discover")
            }
        MessageListView()
            .tabItem {
                Label("message", image: "message")
            }
        MyProfile()
            .tabItem {
                Label("me", image: "me")
            }
    }
}
