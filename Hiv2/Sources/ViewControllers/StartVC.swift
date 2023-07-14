//
//  ViewController.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/10.
//

import UIKit

class StartVC: BaseVC {
    
    final let button = UIButton().then {
        $0.setTitle("NEXT", for: .normal)
    }
    
    override func addView() {
        navigationController?.navigationBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
        view.addSubViews(button)
    }
    
    override func setLayout() {
        button.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(200)
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(200)
            $0.leading.equalToSuperview().inset(50)
        }
    }
}
