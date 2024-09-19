//  SynchroCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class SynchroCardsPresenter: SynchroCards_ViewToPresenterProtocol {
    
    weak var view: SynchroCards_PresenterToViewProtocol?
    var interactor: SynchroCards_PresenterToInteractorProtocol?
    var router: SynchroCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension SynchroCardsPresenter: SynchroCards_InteractorToPresenterProtocol {

}
