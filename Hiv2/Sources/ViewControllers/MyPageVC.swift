//
//  myPageVC.swift
//  Hiv2
//
//  Created by AnnKangHo on 2023/07/13.
//

import UIKit

final class MyPageVC: BaseVC {

    override func configNavigation() {
        super.configNavigation()
        gotoAlertButton?.isEnabled = true
        gotoMyPageButton?.isEnabled = false
    }
}
