//  DetailCardViewRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class DetailCardViewRouter {
	
    static func createModule() -> UIViewController {
        
        let view = DetailCardViewViewController()
        let presenter = DetailCardViewPresenter()
        let interactor = DetailCardViewInteractor()
        let router = DetailCardViewRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension DetailCardViewRouter: DetailCardView_PresenterToRouterProtocol {
    
}
