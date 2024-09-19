//  PendulumCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class PendulumCardsPresenter: PendulumCards_ViewToPresenterProtocol {
    
    weak var view: PendulumCards_PresenterToViewProtocol?
    var interactor: PendulumCards_PresenterToInteractorProtocol?
    var router: PendulumCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension PendulumCardsPresenter: PendulumCards_InteractorToPresenterProtocol {

}
