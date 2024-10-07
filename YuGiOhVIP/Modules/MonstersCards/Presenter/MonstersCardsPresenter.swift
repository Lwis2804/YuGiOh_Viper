//  MonstersCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 23/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MonstersCardsPresenter: MonstersCards_ViewToPresenterProtocol {
    
    weak var view: MonstersCards_PresenterToViewProtocol?
    var interactor: MonstersCards_PresenterToInteractorProtocol?
    var router: MonstersCards_PresenterToRouterProtocol?
    
    
    func getToMonstersCards() {
        interactor?.getMonstersCardsToInteractor()
    }
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MonstersCardsPresenter: MonstersCards_InteractorToPresenterProtocol {
    func getMonstersCardsFromInteractor(withResponse response: CardResponse) {
        view?.updateMonstersCards(withResponse: response)
    }
    

}
