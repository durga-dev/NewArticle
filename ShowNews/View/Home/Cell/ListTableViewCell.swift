//
//  ListTableViewCell.swift
//  LiveInterView
//
//  Created by User on 08/01/23.
//

import UIKit
class ListTableViewCell: UITableViewCell {

    var data: Article? {
        didSet {
            imageViewCell.loadImage(from: data?.urlToImage ?? "")
            titileLbl.text = data?.title
            descriptionLbl.text = data?.description
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageViewCell.backgroundColor = .lightGray
    }

    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var titileLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
