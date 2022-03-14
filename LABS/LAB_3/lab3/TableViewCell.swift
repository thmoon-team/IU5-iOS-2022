//
//  TableViewCell.swift
//  lab3
//
//  Created by  on 09.03.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var LogoView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(title: String = "Title", subtitle: String = "Subtitle", image: UIImage = UIImage(systemName: "archivebox")!) {
        titleLabel.text = title
        subtitleLabel.text = subtitle
        LogoView.image = image
    }
}
