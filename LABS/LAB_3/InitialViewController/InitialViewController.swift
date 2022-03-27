import UIKit

class InitialViewController: UIViewController {
    
    private var labThreeButton = UIButton(type: .system)
    
    private var labFourButton = UIButton(type: .system)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton(button: labThreeButton, title: "Lab3")
        setupButton(button: labFourButton, title: "Lab4")
        labThreeButton.addTarget(self, action: #selector(didTaplabThreeButton), for: .touchUpInside)
        labFourButton.addTarget(self, action: #selector(didTaplabFourButton), for: .touchUpInside)
        postButton()
        view.addSubview(labThreeButton)
        view.addSubview(labFourButton)
    }
    private func setupButton(button: UIButton, title: String) {
        button.backgroundColor = .black
        button.layer.cornerRadius = 4
        button.tintColor = .white
        button.setTitle(title, for: .normal)
    }
    private func postButton() {
        
        labThreeButton.frame = CGRect(x: 25, y: 300, width: UIScreen.main.bounds.width - 50, height: 100)
        labFourButton.frame = CGRect(x: 25, y: 420, width: UIScreen.main.bounds.width - 50, height: 100)
        
    }
    @objc
    private func didTaplabThreeButton() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Main")
        navigationController?.pushViewController(viewController, animated: false)
    }
    @objc
    private func didTaplabFourButton() {
        let tableviewController = CodeTableViewController()
        navigationController?.pushViewController(tableviewController, animated: false)
    }
}
