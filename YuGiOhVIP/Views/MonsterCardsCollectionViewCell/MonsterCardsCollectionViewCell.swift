//
//  MonsterCardsCollectionViewCell.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 23/09/24.
//

import UIKit

class MonsterCardsCollectionViewCell: UICollectionViewCell {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var monsterName: UILabel!
    
    //MARK: - VARIABLES
    
    var downloadTask : URLSessionDownloadTask?
    
    //MARK: - LIFE · CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    //MARK: - FUNCTIONS
    
    public func setUpCardList (categoria : DataCard) {
        self.monsterName.text = categoria.name
        
        if let urlPoster = categoria.card_images,
           let url = URL(string: "\(urlPoster[0].image_url_small ?? "")") {
            downloadTask = monsterImage.loadImage(url: url)
        }
    }
    /*
    override func setSelected(_ selected : Bool, animated : Bool){
        super.setSelected(selected, animated: animated)
    }
    */
}
