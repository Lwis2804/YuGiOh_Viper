//  FiusionCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class FiusionCardsPresenter: FiusionCards_ViewToPresenterProtocol {
    
    weak var view: FiusionCards_PresenterToViewProtocol?
    var interactor: FiusionCards_PresenterToInteractorProtocol?
    var router: FiusionCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension FiusionCardsPresenter: FiusionCards_InteractorToPresenterProtocol {

}
