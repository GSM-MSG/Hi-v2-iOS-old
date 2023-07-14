//
//  BaseViewController.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/11.
//

import UIKit
import SnapKit
import Then

<<<<<<< HEAD
class BaseVC: UIViewController, UITabBarControllerDelegate {
    
    var gotoMyPageButton: UIBarButtonItem?
    var gotoAlertButton: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
=======
class BaseVC: UIViewController {
    let bound = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
>>>>>>> e5144aa2180c2fbcae2d2c67f06736efc088ce00
        addView()
        setLayout()
        addTarget()
        delegate()
        configNavigation()
<<<<<<< HEAD
        configTabBar()
=======
>>>>>>> e5144aa2180c2fbcae2d2c67f06736efc088ce00
        setupBackgroundIfNotSet()
    }
    
    private func setupBackgroundIfNotSet() {
        if self.view.backgroundColor == nil {
            self.view.backgroundColor = .white
        }
    }
    
    func addView() {}
    func setLayout() {}
    func addTarget() {}
    func delegate() {}
<<<<<<< HEAD
    func configTabBar() {}
    
    func configNavigation() {
        self.view.backgroundColor = UIColor(named: "noticeBackgroundColor")
        
        gotoMyPageButton = UIBarButtonItem(image: UIImage(systemName: "person.circle.fill")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(gotoMyPageVC))
        gotoMyPageButton?.tintColor = .systemGray4
        gotoAlertButton = UIBarButtonItem(image: UIImage(systemName: "bell.badge")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(gotoAlertVC))
        gotoAlertButton?.tintColor = .black
        let logoBarButtonItem = UIBarButtonItem(customView: UIImageView(image: UIImage(named: "LogoImage")))
        logoBarButtonItem.customView?.frame = CGRect(x: 0, y: 0, width: 21, height: 27)
        if let myPageButton = gotoMyPageButton, let alertButton = gotoAlertButton {
            navigationItem.rightBarButtonItems = [myPageButton, alertButton]
        }
        navigationItem.leftBarButtonItem = logoBarButtonItem
    }
}

extension BaseVC {
    
    @objc func gotoMyPageVC() {
        let gotoMyPageVC = MyPageVC()
        self.navigationController?.setViewControllers([gotoMyPageVC], animated: true)
    }
    
    @objc func gotoAlertVC() {
        let gotoAlertVC = AlertVC()
        self.navigationController?.setViewControllers([gotoAlertVC], animated: true)
    }
}

=======
    func configNavigation() {}
}
>>>>>>> e5144aa2180c2fbcae2d2c67f06736efc088ce00
