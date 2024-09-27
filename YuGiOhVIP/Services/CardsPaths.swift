//
//  CardsPaths.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation


enum cardsPath {
    case getCards
    case getSearch
  
    
    func getPath() -> String {
        switch self {
        case .getCards:
            return "https://db.ygoprodeck.com/api/v7/cardinfo.php"
      
        case .getSearch:
            return ""
        }
    }
}


//"https://db.ygoprodeck.com/api/v7/cardinfo.php?name=\(strSearchWeb)"
