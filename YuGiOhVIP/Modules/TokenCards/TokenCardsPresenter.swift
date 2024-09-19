//  TokenCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class TokenCardsPresenter: TokenCards_ViewToPresenterProtocol {
    
    weak var view: TokenCards_PresenterToViewProtocol?
    var interactor: TokenCards_PresenterToInteractorProtocol?
    var router: TokenCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension TokenCardsPresenter: TokenCards_InteractorToPresenterProtocol {

}
