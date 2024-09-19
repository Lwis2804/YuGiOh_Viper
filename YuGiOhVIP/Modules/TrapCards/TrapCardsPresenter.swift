//  TrapCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class TrapCardsPresenter: TrapCards_ViewToPresenterProtocol {
    
    weak var view: TrapCards_PresenterToViewProtocol?
    var interactor: TrapCards_PresenterToInteractorProtocol?
    var router: TrapCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension TrapCardsPresenter: TrapCards_InteractorToPresenterProtocol {

}
