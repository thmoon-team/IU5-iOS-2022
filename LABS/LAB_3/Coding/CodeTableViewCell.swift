//
//  File.swift
//  lab3
//
//  Created by on 18.03.2022.
//
import UIKit

class CodeTableViewCell: UITableViewCell {
    
    private let LogoView = UIImageView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    
    private enum Constraints {
        enum Image {
            static let height: CGFloat = 52
            static let width: CGFloat = 52
        }
        enum Title {
            static let height: CGFloat = 20
            static let width: CGFloat = 101
        }
        enum subTitle {
            static let height: CGFloat = 20
            static let width: CGFloat = 284
        }
    }
    
    required init?(code aDecoder: NSCoder ) {
        super.init(coder: aDecoder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        configureViews()
    }
    
    private func configureViews() {
        LogoView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            LogoView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 4),
            LogoView.widthAnchor.constraint(equalToConstant: Constraints.Image.width),
            LogoView.heightAnchor.constraint(equalToConstant: Constraints.Image.height),
            LogoView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: LogoView.topAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: Constraints.Title.height),
            titleLabel.widthAnchor.constraint(equalToConstant: Constraints.Title.width),
            titleLabel.leftAnchor.constraint(equalTo: LogoView.rightAnchor, constant: 8),
            
            subtitleLabel.heightAnchor.constraint(equalToConstant: Constraints.subTitle.height),
            subtitleLabel.widthAnchor.constraint(equalToConstant: Constraints.subTitle.width),
            subtitleLabel.leftAnchor.constraint(equalTo: LogoView.rightAnchor, constant: 8),
            subtitleLabel.bottomAnchor.constraint(equalTo: LogoView.bottomAnchor)
        ])
        
        LogoView.tintColor = .black
        
        titleLabel.backgroundColor = .quaternaryLabel
        titleLabel.textAlignment = .center
        titleLabel.tintColor = .black
        
        subtitleLabel.backgroundColor = .separator
        subtitleLabel.textAlignment = .center
        subtitleLabel.tintColor = .black
}
    
    private func setupViews() {
        addSubview(LogoView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    func configure(title: String = "Title", subtitle: String = "Subtitle", image: UIImage = UIImage(systemName: "archivebox")!) {
        titleLabel.text = title
        subtitleLabel.text = subtitle
        LogoView.image = image
    }
}
