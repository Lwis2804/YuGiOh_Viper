//
//  CardsPaths.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation


enum cardsPath {
    case getMonstersCards
    case getMagicCards
    case getTrapCards
    case getFusionCards
    case getRitualCards
    case getXYZCards
    case getPendulumCards
    case getSynchroCards
    case getLinkCards
    case getTokenCards
    
    func getPath() -> String {
        switch self {
       
        case .getMonstersCards:
            return "/api/v7/cardinfo.php"
            // "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getMagicCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getTrapCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getFusionCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getRitualCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getXYZCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getPendulumCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getSynchroCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getLinkCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        case .getTokenCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        }
    }
}
