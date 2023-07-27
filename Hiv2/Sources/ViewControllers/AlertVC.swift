//
//  AlertVC.swift
//  Hiv2
//
//  Created by AnnKangHo on 2023/07/13.
//

import UIKit

final class AlertVC: BaseVC {
    
    override func configNavigation() {
        super.configNavigation()
        gotoAlertButton?.isEnabled = false
        gotoMyPageButton?.isEnabled = true
    }
}
