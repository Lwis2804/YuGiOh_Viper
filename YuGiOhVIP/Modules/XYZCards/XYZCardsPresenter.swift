//  XYZCardsPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class XYZCardsPresenter: XYZCards_ViewToPresenterProtocol {
    
    weak var view: XYZCards_PresenterToViewProtocol?
    var interactor: XYZCards_PresenterToInteractorProtocol?
    var router: XYZCards_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension XYZCardsPresenter: XYZCards_InteractorToPresenterProtocol {

}
