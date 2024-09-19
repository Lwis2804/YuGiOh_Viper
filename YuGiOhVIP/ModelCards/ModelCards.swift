//
//  ModelCards.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation

struct CardResponse : Codable {
    var dataCard : [DataCard]?

    enum CodingKeys: String, CodingKey {

        case dataCard = "data"
    }
}

struct DataCard : Codable {
    var id : Int?
    var name : String?
    var type : String?
    var frameType : String?
    var desc : String?
    var race : String?
    var atk : Int?
    var def : Int?
    var attribute : String?
    var level : Int?
    var archetype : String?
    var card_sets : [Card_sets]?
    var card_images : [Card_images]?
    var card_prices : [Card_prices]?
}

struct Card_sets : Codable {
    var set_name : String?
    var set_code : String?
    var set_rarity : String?
    var set_rarity_code : String?
    var set_price : String?
}

struct Card_images : Codable {
    var id : Int?
    var image_url : String?
    var image_url_small : String?
    var image_url_cropped : String?
}

struct Card_prices : Codable {
    var cardmarket_price : String?
    var tcgplayer_price : String?
    var ebay_price : String?
    var amazon_price : String?
    var coolstuffinc_price : String?
}

