//
//  ReceipeCell.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 3/22/22.
//

import UIKit

class ReceipeCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
