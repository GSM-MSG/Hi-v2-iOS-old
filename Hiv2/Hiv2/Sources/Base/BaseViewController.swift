//
//  BaseViewController.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/11.
//

import UIKit
import SnapKit
import Then

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addView()
        setLayout()
        addTarget()
        delegate()
        configNavigation()
    }
    
    func addView() {}
    func setLayout() {}
    func addTarget() {}
    func delegate() {}
    func configNavigation() {}
}
