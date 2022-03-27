//
//  InitialViewController.swift
//  lab4
//
//  Created by f on 19.03.2022.
//

import Foundation
import UIKit

final class InitialViewController: UIViewController{
    private lazy var tableViewController:UITableView = {
        UITableView(frame: CGRect.zero, style: .grouped)
    }()
  /*  private enum CellsDisplayData: String, CaseIterable {

        case lab3 = "gweg"
        case lab4 = "текст 2 "
        case alenaLoh = "Табличка titleSubTitle"
        case BUBUBU = "bububub"
    } */
    
     override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
         setupTableViewConstraints()
        
    }
    private func setupTableView() {
        view.addSubview(tableViewController)
        
        title = "Это ЗАГОЛОВОК"
        
        setupTableViewConstraints()
        
        //view.backgroundColor = .blue
        tableViewController.delegate = self
        tableViewController.dataSource = self
        tableViewController.backgroundColor = .systemMint
      //  tableViewController.tableHeaderView = UIView(frame: CGRect(x:0, y:0, width:tableViewController.frame.width, height:CGFloat.leastNormalMagnitude ))
        
    //    let Header = UILabel(frame: CGRect(x:0, y:0, width:tableViewController.frame.width, height:30))
     //   Header.text = "HEADER TEXT"
     //   tableViewController.tableHeaderView?.addSubview(Header)
        registerCell()
        registerHeader()
        registerFooter()
    //    SetupImage()
        
    }
    
    private func registerCell(){
        tableViewController.register(InitialViewControllerCell.self, forCellReuseIdentifier: "InitialViewControllerCell")
            
        }
    private func registerHeader() {
        tableViewController.register(HeaderFooterView.self,
                               forHeaderFooterViewReuseIdentifier: "Header")
        }

    private func registerFooter() {
        tableViewController.register(HeaderFooterView.self,
                                forHeaderFooterViewReuseIdentifier: "Footer")
        }
        
    
    
    private func setupTableViewConstraints(){
        tableViewController.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableViewController.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableViewController.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableViewController.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableViewController.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    //    tableViewController.contentInset = UIEdgeInsets(top: 200, left: 0, bottom: 0, right: 0)  // отступы для контента внутри view
    }
}








extension InitialViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt:IndexPath ) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 10
        }
    func tableView(_ tableView: UITableView,
                    viewForHeaderInSection section: Int) -> UIView?
     {
         guard let header = tableView.dequeueReusableHeaderFooterView(
             withIdentifier: "Header") as? HeaderFooterView
         else {
             return UIView()
         }
         header.configure(text: "All views")
         return header
     }

     func tableView(_ tableView: UITableView,
                    viewForFooterInSection section: Int) -> UIView?
     {
         guard let footer = tableView.dequeueReusableHeaderFooterView(
             withIdentifier: "Footer") as? HeaderFooterView
         else {
             return UIView()
         }
         footer.configure(text: "bb")
         return footer
     }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "Lab3Storyboard")
            navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 1 {
            let vc = secondViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 2 {
            let vc = MenuViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        }
        
    }
//let textContent = [(
//    title: "odin",
 //   subtitle: "dva",
 //   image: UIImage(systemName: "square"),
  //  ]   //  если честно я не оч понял почему оно выдает ошибку при такой реализации, базовые знания меня покинули...
     
    struct TableText {
         var image: UIImage?
         var title: String?
         var subtitle: String?
     }

     var CellDisplayData: [TableText] = [
        TableText(
             image: UIImage(systemName: "square"),
             title: "Prosto",
             subtitle: "Bilo"),
        TableText(
             image: UIImage(systemName: "person"),
             title: "Tut",
             subtitle: "Toshe"),
        TableText(
             image: UIImage(systemName: "table"),
             title: "Collection",
             subtitle: "View"),
     ]


extension InitialViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CellDisplayData.count
      //  return CellsDisplayData.allCases.count
 }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableViewController.dequeueReusableCell(withIdentifier: "InitialViewControllerCell", for: indexPath) as? InitialViewControllerCell else {
        fatalError()
      }
 //   cell.backgroundColor = .red
    
    cell.configure(title: CellDisplayData[indexPath.row].title,
                   subtitle: CellDisplayData[indexPath.row].subtitle,
                   image: CellDisplayData[indexPath.row].image)
    return cell
   }
}

