//  RitualCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class RitualCardsPresenter: RitualCards_ViewToPresenterProtocol {
    
    weak var view: RitualCards_PresenterToViewProtocol?
    var interactor: RitualCards_PresenterToInteractorProtocol?
    var router: RitualCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension RitualCardsPresenter: RitualCards_InteractorToPresenterProtocol {

}
