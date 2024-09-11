//  MonsterCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MonsterCardsPresenter: MonsterCards_ViewToPresenterProtocol {
    
    weak var view: MonsterCards_PresenterToViewProtocol?
    var interactor: MonsterCards_PresenterToInteractorProtocol?
    var router: MonsterCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MonsterCardsPresenter: MonsterCards_InteractorToPresenterProtocol {

}
