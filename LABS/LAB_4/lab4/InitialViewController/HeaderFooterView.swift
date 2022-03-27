//
//  HeaderFooterView.swift
//  lab4
//
//  Created by f on 22.03.2022.
//

import Foundation
import UIKit

 class HeaderFooterView: UITableViewHeaderFooterView {

     private let title = UILabel()
     private lazy var sep: UIView = UIView()
     override init(reuseIdentifier: String?) {
         super.init(reuseIdentifier: reuseIdentifier)
         setupViews()
     }

     
     
     
     private func setupViews() {
         contentView.addSubview(title)
         contentView.addSubview(sep)
         sep.backgroundColor = .systemCyan
     }
     
     
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         setupViews()
     }
     override func prepareForReuse() {
         super.prepareForReuse()
         title.text = ""
     }

     override func layoutSubviews() {
         super.layoutSubviews()
         title.frame = CGRect(x: 15,
                              y: 0,
                              width: contentView.frame.width - 30,
                              height: contentView.frame.height + 40)
         if reuseIdentifier == "Header" {
             sep.frame = CGRect(x: 10,
                                 y: contentView.frame.maxY + 25,
                                 width: contentView.frame.width,
                                 height: 2)
         } else if reuseIdentifier == "Footer" {
             sep.frame = CGRect(x: 10,
                                 y: 50,
                                 width: contentView.frame.width,
                                 height: 2)
         }
     }
     

     func configure(text: String) {
         title.attributedText = NSAttributedString(string: text, attributes: [
                 NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 25),
                 NSAttributedString.Key.foregroundColor : UIColor.systemCyan])
     }

 }
