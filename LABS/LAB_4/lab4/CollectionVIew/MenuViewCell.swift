//
//  MenuViewCell.swift
//  lab4
//
//  Created by f on 20.03.2022.
//

import Foundation
//
//  InitialViewControllerCell.swift
//  lab4
//
//  Created by f on 20.03.2022.
//

import Foundation
import UIKit


final class MenuViewCell: UITableViewCell {
    // - Lifecycle
    private let nameLabel = UILabel()
  //  private let imageAvatar = UIImageView()


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier:String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = " bbkbk"
       // imageAvatar.image = nil
    }
 //   override func layoutSubviews() {
    //    super.layoutSubviews()
       // nameLabel.frame = CGRect(x: 8, y: 8, width: frame.width-16, height: frame.height-16)
   // }
    
    private func setupViews() {    //Опрделяем что и как рисуем в ячейке.
        contentView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8),
            nameLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        ])
        nameLabel.backgroundColor = .systemBlue
        
       
        nameLabel.numberOfLines = 0
        
        
        
    }
    func configure(text: String) {
        nameLabel.text = text
    }
}
