//
//  ViewController.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/10.
//

import UIKit
import GAuthSignin

final class StartViewController: BaseViewController {
    
    // MARK: Properties
    private let logoImageView = UIImageView().then {
        $0.image = UIImage(named: "LogoImage")
    }
    
    private let pageTitleLabel = UILabel().then {
        $0.text = "반가워요!"
        $0.font = UIFont(name: "Pretendard-Bold", size: 32)
    }
    
    private let pageSubTitleLabel = UILabel().then {
        $0.text = "불편했던 홈베이스 신청, \nHi에서 온라인으로 쉽게 해 보아요!"
        $0.font = UIFont(name: "Pretendard-Medium", size: 16)
        $0.textColor = UIColor(rgb: 0x999999)
        $0.numberOfLines = 2
    }
    
    private let startViewImageView = UIImageView().then {
        $0.image = UIImage(named: "StartViewImage")
    }
    
    let gauthButton = GAuthButton(auth: .signin, color: .colored, rounded: .default)
    
//    gauthButton.prepare(clientID: String,
//                        redirectURI: String,
//                        presenting: StartViewController,
//                        completion: @escaping (_code: String) -> Void
//    )
    
    
    private let TermsOfServiceButton = UIButton().then {
        $0.setTitle("서비스 이용약관", for: .normal)
        $0.setTitleColor(UIColor(rgb: 0x999999), for: .normal)
        $0.titleLabel?.font = UIFont(name: "Pretendard-Regular", size: 12)
    }
    
    private let contourView = UIView().then {
        $0.backgroundColor = UIColor(rgb: 0x999999)
    }
    
    private let privacyPolicyButton = UIButton().then {
        $0.setTitle("개인정보 처리방침", for: .normal)
        $0.setTitleColor(UIColor(rgb: 0x999999), for: .normal)
        $0.titleLabel?.font = UIFont(name: "Pretendard-Regular", size: 12)
    }
    
    // MARK: UI
    override func addView() {
        view.addSubViews(logoImageView, pageTitleLabel, pageSubTitleLabel, startViewImageView, gauthButton, TermsOfServiceButton, privacyPolicyButton, contourView)
    }
    
    override func setLayout() {
        logoImageView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.leading.equalToSuperview().inset(28)
            $0.width.equalTo(24)
            $0.height.equalTo(31)
        }
        
        pageTitleLabel.snp.makeConstraints {
            $0.top.equalTo(logoImageView.snp.bottom).offset(33)
            $0.leading.equalToSuperview().inset(28)
        }
        
        pageSubTitleLabel.snp.makeConstraints {
            $0.top.equalTo(pageTitleLabel.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(28)
        }
        
        startViewImageView.snp.makeConstraints {
            $0.top.equalTo(pageSubTitleLabel.snp.bottom).offset(18)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(375)
            $0.height.equalTo(332)
        }
        
        gauthButton.snp.makeConstraints {
            $0.bottom.equalTo(contourView.snp.top).inset(-12)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(319)
            $0.height.equalTo(50)
        }
        
        TermsOfServiceButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(12)
            $0.trailing.equalTo(contourView.snp.leading).inset(-8)
        }
        
        contourView.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(19)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(1)
            $0.height.equalTo(14)
        }
        
        privacyPolicyButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(12)
            $0.leading.equalTo(contourView.snp.trailing).inset(-8)
        }
    }
}


