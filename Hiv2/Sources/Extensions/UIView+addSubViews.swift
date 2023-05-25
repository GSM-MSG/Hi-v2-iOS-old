//
//  UIView+addViews.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/12.
//

import UIKit

extension UIView {
    func addSubViews(_ subview: UIView...) {
        subview.forEach(addSubview(_:))
    }
}
