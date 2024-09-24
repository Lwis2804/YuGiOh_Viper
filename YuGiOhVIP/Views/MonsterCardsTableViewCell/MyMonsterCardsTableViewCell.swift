//
//  MyMonsterCardsTableViewCell.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 19/09/24.
//

import UIKit

class MyMonsterCardsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var nameCard: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
