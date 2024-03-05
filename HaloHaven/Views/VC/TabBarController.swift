//
//  TabBarController.swift
//  HaloHaven
//
//  Created by BIT3016 on 05/03/24.
//

import Foundation
import UIKit

class TabBarController: UITabBarController{
    let newSize = CGSize(width: 32, height: 30)
    let image1 = Properties.matchLogoTB
    let image2 = Properties.searchLogoTB
    let image3 = Properties.profileLogoTB
    
    // View Controllers For Tab Bar
    let matchListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MatchListVC") as! MatchListVC
    let searchVC = UIViewController()
    let profileVC = UIViewController()
    
    let customTabBar = CustomTabBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        //MARK: - Tab Bar items setup
        self.setValue(customTabBar, forKey: "tabBar")
        UITabBar.appearance().tintColor = UIColor(named: "#E94057")
        UITabBar.appearance().unselectedItemTintColor = UIColor.black

        // Tab Bar items config
        let logo1 = image1?.resize(targetSize: newSize)
        let logo2 = image2?.resize(targetSize: newSize)
        let logo3 = image3?.resize(targetSize: newSize)
        
        let item1 = UITabBarItem(title: "Matches", image: logo1, tag: 0)
        let item2 = UITabBarItem(title: "Search", image: logo2, tag: 1)
        let item3 = UITabBarItem(title: "Profile", image: logo3, tag: 2)
        
        //Embedding Navigation Controller
        let nav1 = UINavigationController(rootViewController: matchListVC)
        let nav2 = UINavigationController(rootViewController: searchVC)
        let nav3 = UINavigationController(rootViewController: profileVC)
        
        nav1.tabBarItem = item1
        nav2.tabBarItem = item2
        nav3.tabBarItem = item3
        
        self.viewControllers = [nav1,nav2,nav3]

    }
    
    
}
