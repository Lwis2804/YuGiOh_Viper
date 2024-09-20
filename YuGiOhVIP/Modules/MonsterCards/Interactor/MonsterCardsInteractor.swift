//  MonsterCardsInteractor.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MonsterCardsInteractor: MonsterCards_PresenterToInteractorProtocol {
    weak var presenter: MonsterCards_InteractorToPresenterProtocol?
    private var metodo : String = "https:"
    private var host : String = "//db.ygoprodeck.com"
    
    
    func getMonsterCardsToInteractor() {
        let service : NetworkApiProtocol = CardsWebService(urlConfiguration: CardsUrlCoinfiguration(metodo: metodo, host: host, path: cardsPath.getMonstersCards.getPath() as! PathsProtocol))
        
        service.consumeService{ [ weak self] (result : Result<CardResponse,ErrorsWebService>) in
            
            switch result {
            case .success(let succes):
                print(succes)
                self?.presenter?.getMonsterCardsFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
   }
}
                               
                               
                               
                               
                               
                               
                               
