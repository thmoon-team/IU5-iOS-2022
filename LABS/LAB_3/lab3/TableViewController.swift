//
//  ViewController.swift
//  lab3
//
//  Created by  on 10.03.2022.
//

import UIKit

class TableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    private let CellProp = [
                            (title: "Profile", subtitle: "Account", image: "person"),
                            (title: "Settings", subtitle: "General", image: "gearshape"),
                            (title: "Bucket", subtitle: "Removed items", image: "trash"),
                            (title: "Contact", subtitle: "Leave a review", image: "message")
                           ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTable()
    }
    
    
    private func setupTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "test")
    }
}
    
extension TableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell1") as? TableViewCell
        cell?.configure(title: CellProp[indexPath.row].title, subtitle: CellProp[indexPath.row].subtitle, image: UIImage(systemName: CellProp[indexPath.row].image)!)
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard indexPath.row != 0 else {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FuncView")
        present(viewController, animated: true)
        return
        }
    }
    
}
extension TableViewController: UITableViewDelegate {
}
    

