//
//  MainViewController.swift
//  NIS-IOS-FancyApp
//
//  Created by Ярослав Карпунькин on 04.02.2021.
//

import Foundation
import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private lazy var signInButton:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.cornerRadius = 5
        button.borderWidth = 1
        button.borderColor = .red
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.titleLeftPadding = 30
        button.setTitle("Sign In", for: .normal)
        return button
    }()
    
    private lazy var firstButton:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.cornerRadius = 5
        button.borderWidth = 1
        button.borderColor = .black
        button.contentHorizontalAlignment = .center
        button.titleLeftPadding = 30
        button.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageLeftPadding = 10
        button.imageRightPadding = 10
        button.imageTopPadding = 10
        button.imageBottomPadding = 10
        
        return button
    }()
    private lazy var secondButton:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.cornerRadius = 5
        button.borderWidth = 1
        button.borderColor = .black
        button.contentHorizontalAlignment = .center
        button.titleLeftPadding = 30
        button.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageLeftPadding = 10
        button.imageRightPadding = 10
        button.imageTopPadding = 10
        button.imageBottomPadding = 10
        
        return button
    }()
    
    private lazy var firstCircleButton:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.borderWidth = 1
        button.borderColor = .black
        button.contentHorizontalAlignment = .center
        button.titleLeftPadding = 30
        button.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageLeftPadding = 10
        button.imageRightPadding = 10
        button.imageTopPadding = 10
        button.imageBottomPadding = 10
        button.cornerRadius = 35
        
        return button
    }()
    
    private lazy var secondCircleButton:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.borderWidth = 5
        button.borderColor = .black
        button.contentHorizontalAlignment = .center
        button.titleLeftPadding = 30
        button.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageLeftPadding = 10
        button.imageRightPadding = 10
        button.imageTopPadding = 10
        button.imageBottomPadding = 10
        button.cornerRadius = 35
        
        return button
    }()
    
    private lazy var lastFirst:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.cornerRadius = 5
        button.backgroundColor = .green
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.titleLeftPadding = 30
        button.setTitle("Sign In with twitter", for: .normal)
        button.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        button.imageLeftPadding = UIScreen.main.bounds.width - 20 - 40
        return button
    }()
    
    private lazy var lastSecond:FancyButton = {
        let button = FancyButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.cornerRadius = 5
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.titleLeftPadding = 30
        button.setTitle("Download twitter", for: .normal)
        button.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        button.imageRightPadding = UIScreen.main.bounds.width - 20 - 40
        button.titleLeftPadding = 10
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        setupConstraints()
    }
}

//MARK: - Constraints
extension MainViewController {
    private func setupConstraints() {
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.height.equalTo(40)
        }
        
        
        view.addSubview(firstButton)
        firstButton.snp.makeConstraints { (make) in
            make.left.height.equalTo(signInButton)
            make.top.equalTo(signInButton.snp.bottom).offset(10)
            make.width.equalTo(signInButton.snp.width).multipliedBy(0.44)
        }
        
        view.addSubview(secondButton)
        secondButton.snp.makeConstraints { (make) in
            make.right.height.equalTo(signInButton)
            make.top.equalTo(signInButton.snp.bottom).offset(10)
            make.width.equalTo(signInButton.snp.width).multipliedBy(0.44)
        }
        
        view.addSubview(firstCircleButton)
        firstCircleButton.snp.makeConstraints { (make) in
            make.height.equalTo(70)
            make.left.equalTo(firstButton)
            make.top.equalTo(firstButton.snp.bottom).offset(10)
            make.width.equalTo(70)
        }
        
        view.addSubview(secondCircleButton)
        
        secondCircleButton.snp.makeConstraints { (make) in
            make.right.equalTo(secondButton)
            make.top.equalTo(firstButton.snp.bottom).offset(10)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(lastFirst)
        lastFirst.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.top.equalTo(secondCircleButton.snp.bottom).offset(10)
            make.height.equalTo(40)
        }
        
        view.addSubview(lastSecond)
        lastSecond.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.top.equalTo(lastFirst.snp.bottom).offset(10)
            make.height.equalTo(40)
        }
    }
}

// MARK: - SwiftUI
import SwiftUI

struct FeedOrderVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }

    struct ContainerView: UIViewControllerRepresentable {
        let feedOrderVC = MainViewController()

        func makeUIViewController(context: Context) -> some MainViewController {
            return feedOrderVC
        }

        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

        }
    }
}
