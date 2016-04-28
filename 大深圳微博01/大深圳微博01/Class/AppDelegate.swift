//
//  AppDelegate.swift
//  大深圳微博01
//
//  Created by shenzhenIOS on 16/4/8.
//  Copyright © 2016年 shenzhenIOS. All rights reserved.
//

import UIKit

// 可选理解为红包

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        // 创建窗口
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let vc = UITabBarController()
        vc.view.backgroundColor = UIColor.redColor()
        
        // 首页
        let homeVC = HMHomeTableViewController()
        // [UIImage imageWithNamed:] -> UIImage(named: "")
        // [类名 类名WithXXX], [类名 alloc] initWithXXX] -> 类名(xxx)
        homeVC.tabBarItem.image = UIImage(named: "tabbar_home")
        homeVC.title = "首页"
        
        vc.addChildViewController(UINavigationController(rootViewController: homeVC))
        
        // 消息
        let messageVC = HMMessageTableViewController()
        messageVC.tabBarItem.image = UIImage(named: "tabbar_message_center")
        messageVC.title = "消息"
        
        vc.addChildViewController(UINavigationController(rootViewController: messageVC))
        
        // 发现
        let discoverVC = HMDiscoverTableViewController()
        discoverVC.tabBarItem.image = UIImage(named: "tabbar_discover")
        discoverVC.title = "发现"
        
        vc.addChildViewController(UINavigationController(rootViewController: discoverVC))
        
        // 我
        let profileVC = HMProfileTableViewController()
        profileVC.tabBarItem.image = UIImage(named: "tabbar_profile")
        profileVC.title = "我"
        
        vc.addChildViewController(UINavigationController(rootViewController: profileVC))
        
        // 设置root控制器
        window?.rootViewController = vc
        
        // 设置为主窗口
        // 当window有值得时候才往后面执行
        window?.makeKeyAndVisible()
        
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
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

