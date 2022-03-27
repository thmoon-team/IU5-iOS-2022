//
//  secondViewController.swift
//  lab4
//
//  Created by f on 20.03.2022.
//

import Foundation
import UIKit
final class secondViewController:UIViewController {
    override func viewDidLoad() {
        title = "4 laba"
       // view.backgroundColor = .brown
        let image = UIImage(named: "Aosp8-576x1024.jpg")
        let imageView = UIImageView(image: image)
        view = UIView()
        imageView.alpha = 1
    }
    
}
