//
//  MainViewController.swift
//  NIS-IOS-FancyApp
//
//  Created by Ярослав Карпунькин on 04.02.2021.
//

import Foundation
import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
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
