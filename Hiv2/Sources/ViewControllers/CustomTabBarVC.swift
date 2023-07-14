//
//  CustomTabBarVC.swift
//  Hiv2
//
//  Created by AnnKangHo on 2023/07/13.
//

import UIKit

class CustomTabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = .systemYellow
        self.tabBar.unselectedItemTintColor = .yellow
        
        let noticeNavigationController = UINavigationController(rootViewController: NoticeVC())
        noticeNavigationController.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "megaphone"), selectedImage: nil)
        let tab1NavigationController = UINavigationController(rootViewController: HomeVC())
        tab1NavigationController.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house"), selectedImage: nil)
        let tab2NavigationController = UINavigationController(rootViewController: ReservationVC())
        tab2NavigationController.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "book"), selectedImage: nil)
        viewControllers = [noticeNavigationController, tab1NavigationController, tab2NavigationController]
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let desiredHeight: CGFloat = 90
        var tabBarFrame = tabBar.frame
        tabBarFrame.size.height = desiredHeight
        tabBarFrame.origin.y = view.frame.height - desiredHeight
        tabBar.frame = tabBarFrame
    }
}
