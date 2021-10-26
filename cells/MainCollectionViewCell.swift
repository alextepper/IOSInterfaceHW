//
//  MainCollectionViewCell.swift
//  SecondChance
//
//  Created by Alexander Tepper on 25/10/2021.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var customImageView: UIImageView!
    
    override func prepareForReuse() {
        customImageView.image = nil
    }
    
    func configure(image: UIImage) {
        customImageView.image = image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
