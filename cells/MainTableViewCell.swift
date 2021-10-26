//
//  MainTableViewCell.swift
//  SecondChance
//
//  Created by Alexander Tepper on 25/10/2021.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func prepareForReuse() {
        nameLable.text = nil
        avatarImageView.image = nil
    }
    
    func configure (person: Person){
        avatarImageView.image = person.avatar
        nameLable.text = person.firstName + " " + person.lastName
    }
    
    func configure (group: Group){
        avatarImageView.image = group.profileImage
        nameLable.text = group.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
