//
//  FuncViewController.swift
//  lab3
//
//  Created by  on 12.03.2022.
//

import UIKit

class FuncViewController: UIViewController {

    @IBOutlet weak var ApplyBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ApplyTap(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Confirmation", message: "Are you sure to apply?", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Apply", style: .default)
        let action2 = UIAlertAction(title: "Reset", style: .destructive)
        let action3 = UIAlertAction(title: "Cancel", style: .cancel)
        
        actionSheet.addAction(action1)
        actionSheet.addAction(action2)
        actionSheet.addAction(action3)
        
        present(actionSheet, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
