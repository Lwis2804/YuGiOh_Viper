//  DetailCardViewPresenter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class DetailCardViewPresenter: DetailCardView_ViewToPresenterProtocol {
    
    weak var view: DetailCardView_PresenterToViewProtocol?
    var interactor: DetailCardView_PresenterToInteractorProtocol?
    var router: DetailCardView_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension DetailCardViewPresenter: DetailCardView_InteractorToPresenterProtocol {

}
