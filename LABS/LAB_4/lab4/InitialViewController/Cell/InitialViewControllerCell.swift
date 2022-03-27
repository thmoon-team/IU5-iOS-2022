//
//  InitialViewControllerCell.swift
//  lab4
//
//  Created by f on 20.03.2022.
//

import Foundation
import UIKit


final class InitialViewControllerCell: UITableViewCell {
    
    // - Lifecycle
    private let NewTitle = UILabel()
    private let NewSubtitle = UILabel()
    private let imageAvatar = UIImageView()
    
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
        NewTitle.text = ""
       // imageAvatar.image = nil
    }
 //   override func layoutSubviews() {
    //    super.layoutSubviews()
       // title.frame = CGRect(x: 8, y: 8, width: frame.width-16, height: frame.height-16)
   // }
    override func layoutSubviews() {
        NewTitle.frame = CGRect(x: 65,
                                       y: 30,
                                       width: frame.width - 150,
                                       height: 25)
        NewSubtitle.frame = CGRect(x: 65,
                                          y: 55,
                                          width: frame.width - 150,
                                          height: 15)
             imageAvatar.frame = CGRect(x: 15,
                                          y: 30,
                                          width: 30,
                                          height: 30)
         }
    
    private func setupViews() {    //Опрделяем что и как рисуем в ячейке.
        contentView.addSubview(NewTitle)
        contentView.addSubview(NewSubtitle)
        contentView.addSubview(imageAvatar)
        
        
        NewTitle.font = UIFont.systemFont(ofSize: 22)
        NewSubtitle.font = UIFont.systemFont(ofSize: 15)
        /*
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            title.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8),
            title.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 8),
            title.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        ])
        title.backgroundColor = .systemBlue
        
       // title.text = "Мда"
        title.numberOfLines = 0
        
        
        */
    }

    func configure(title: String?, subtitle: String?, image: UIImage?) {
        NewTitle.text = title
            NewSubtitle.text = subtitle
             guard image != nil else {
                 imageAvatar.image = UIImage(systemName: "exclamationmark.octagon.fill")
                 return
             }
             imageAvatar.image = image
         }
    
    

    }



