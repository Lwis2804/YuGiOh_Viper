//  MagicCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MagicCardsPresenter: MagicCards_ViewToPresenterProtocol {
    
    weak var view: MagicCards_PresenterToViewProtocol?
    var interactor: MagicCards_PresenterToInteractorProtocol?
    var router: MagicCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MagicCardsPresenter: MagicCards_InteractorToPresenterProtocol {

}
