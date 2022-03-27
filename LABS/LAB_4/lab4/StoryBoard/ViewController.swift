//
//  ViewController.swift
//  lab4
//
//  Created by f on 19.03.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button: UIButton!
    override func viewDidLoad() {
        title = "dfbofbij"
        super.viewDidLoad()
       // view.backgroundColor = .brown
        
    }

    @IBAction func Button2(_ sender: Any) {
        let PresentviewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PresentNoViewController")
        navigationController?.pushViewController(PresentviewController, animated: true)
    }
    @IBAction func Button(_ sender: Any) {
        let PresentviewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PresentViewController")
        present(PresentviewController, animated: true, completion: nil)
    }
    
    
}

