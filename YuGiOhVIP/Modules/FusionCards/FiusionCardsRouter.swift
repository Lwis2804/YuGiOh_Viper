//  FiusionCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class FiusionCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = FiusionCardsViewController()
        let presenter = FiusionCardsPresenter()
        let interactor = FiusionCardsInteractor()
        let router = FiusionCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension FiusionCardsRouter: FiusionCards_PresenterToRouterProtocol {
    
}
