//  MonstersCardsInteractor.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 23/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MonstersCardsInteractor: MonstersCards_PresenterToInteractorProtocol {
          // "https://db.ygoprodeck.com/api/v7/cardinfo.php"
          // ":/api/v7/cardinfo.php"
    weak var presenter: MonstersCards_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "//db.ygoprodeck.com"
    
    func getMonstersCardsToInteractor() {
        let service : NetworkApiProtocol = CardsWebService(urlConfiguration: CardsUrlConfiguration(metodo: metodo, host: host, path: cardsPath.getMonstersCards.getPath() as! PathsProtocol))
        
        service.consumeService{ [weak self] (result : Result<DataCard, ErrorsWebService>) in
            
            switch result {
                
            case .success(let succes):
                print(succes)
                self?.presenter?.getMonstersCardsFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}

