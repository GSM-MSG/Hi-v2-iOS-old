//
//  ViewController.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/10.
//

import UIKit
import GAuthSignin

final class StartVC: BaseVC {
     
     // MARK: Properties
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
          $0.contentMode = .scaleAspectFit
     }
     
     let gauthButton = GAuthButton(auth: .signin, color: .colored, rounded: .default)
     
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
     
     
     // MARK: Functions
     override func viewDidLoad() {
          super.viewDidLoad()
          
          gauthBtnTapped()
     }
     
     // MARK: UI
     override func addView() {
          view.addSubViews(pageTitleLabel, pageSubTitleLabel, startViewImageView, gauthButton, TermsOfServiceButton, privacyPolicyButton, contourView)
     }
     
     override func setLayout() {
          pageTitleLabel.snp.makeConstraints {
               $0.top.equalTo(bound.height * 0.15)
               $0.leading.equalToSuperview().inset(28)
          }
          pageSubTitleLabel.snp.makeConstraints {
               $0.top.equalTo(pageTitleLabel.snp.bottom).offset(8)
               $0.leading.equalToSuperview().inset(28)
          }
          startViewImageView.snp.makeConstraints {
               $0.top.equalTo(pageSubTitleLabel.snp.bottom).offset(44)
               $0.leading.equalToSuperview()
               $0.trailing.equalToSuperview()
               $0.height.equalTo(bound.height * 0.4)
          }
          gauthButton.snp.makeConstraints {
               $0.bottom.equalTo(contourView.snp.top).inset(-12)
               $0.centerX.equalToSuperview()
               $0.width.equalTo(319)
               $0.height.equalTo(50)
          }
          TermsOfServiceButton.snp.makeConstraints {
               $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(12)
               $0.trailing.equalTo(contourView.snp.leading).offset(-8)
          }
          contourView.snp.makeConstraints {
               $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(19)
               $0.centerX.equalToSuperview()
               $0.width.equalTo(1)
               $0.height.equalTo(14)
          }
          privacyPolicyButton.snp.makeConstraints {
               $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(12)
               $0.leading.equalTo(contourView.snp.trailing).offset(8)
          }
     }
     
     func gauthBtnTapped() {
          gauthButton.prepare(
               clientID: "a9b7d61e0c964d19864b348b48363d3cc2f65a4706784d9f9e9def67f80510c6",
               redirectURI: "https://dev-hi.msg-team.com/login/oauth",
               presenting: self) { code in
                    print(code)
                    self.navigationController?.setViewControllers([HomeVC()], animated: true)
               }
     }
}


