//
//  ViewController.swift
//  lab3
//
//  Created by  on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var TableButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func TableButtonTap(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController")
        present(viewController, animated: true)
    }
}
