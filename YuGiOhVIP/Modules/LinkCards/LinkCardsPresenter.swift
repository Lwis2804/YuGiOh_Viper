//  LinkCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class LinkCardsPresenter: LinkCards_ViewToPresenterProtocol {
    
    weak var view: LinkCards_PresenterToViewProtocol?
    var interactor: LinkCards_PresenterToInteractorProtocol?
    var router: LinkCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension LinkCardsPresenter: LinkCards_InteractorToPresenterProtocol {

}
