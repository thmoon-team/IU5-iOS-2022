import UIKit

class CodeTableViewController: UIViewController {

    
    private lazy var tableView = UITableView(frame: CGRect.zero, style: .plain)
    
    private let CellProp = [
                            (title: "Profile", subtitle: "Account", image: "person"),
                            (title: "Settings", subtitle: "General", image: "gearshape"),
                            (title: "Bucket", subtitle: "Removed items", image: "trash"),
                            (title: "Contact", subtitle: "Leave a review", image: "message")
                           ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        view.addSubview(tableView)
        setupConstraints()
    }
    
    
    private func setupTable() {
        tableView.rowHeight = CGFloat.init(66)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CodeTableViewCell.self, forCellReuseIdentifier: "tableViewCell")
        tableView.tableFooterView = UIView(frame: CGRect(x: 0,
                                                         y: 0,
                                                         width: tableView.frame.width,
                                                         height: 30))
        tableView.tableFooterView?.backgroundColor = .red
        setupHeaderFooter()
    }
    
    private func setupHeaderFooter(headerTitle: String = "List of functions", footerTitle: String = "That's all") {
        let header = UILabel(frame: CGRect(x: 0,
                                           y: 0,
                                           width: tableView.frame.width,
                                           height: 30))
        header.text = "List of functions"
        tableView.tableHeaderView = header
        let footer = UILabel(frame: CGRect(x: 0,
                                           y: 0,
                                           width: tableView.frame.width,
                                           height: 30))
        footer.text = "That's all"
        tableView.tableFooterView = footer
    }
    
    private func setupConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
    
extension CodeTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as? CodeTableViewCell
        cell?.configure(title: CellProp[indexPath.row].title, subtitle: CellProp[indexPath.row].subtitle, image: UIImage(systemName: CellProp[indexPath.row].image)!)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard indexPath.row != 0 else {
            let viewController = CodeFuncViewController()
            present(viewController, animated: true)
            return
        }
    }
    
}
extension CodeTableViewController: UITableViewDelegate {
}
