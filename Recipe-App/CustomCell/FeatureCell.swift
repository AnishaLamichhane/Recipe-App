//
//  FeatureCell.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 3/24/22.
//

import UIKit

class FeatureCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
