//  DetailCardPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class DetailCardPresenter: DetailCard_ViewToPresenterProtocol {
    
    weak var view: DetailCard_PresenterToViewProtocol?
    var interactor: DetailCard_PresenterToInteractorProtocol?
    var router: DetailCard_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension DetailCardPresenter: DetailCard_InteractorToPresenterProtocol {

}
