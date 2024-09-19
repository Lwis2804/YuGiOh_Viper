//  RitualCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class RitualCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = RitualCardsViewController()
        let presenter = RitualCardsPresenter()
        let interactor = RitualCardsInteractor()
        let router = RitualCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension RitualCardsRouter: RitualCards_PresenterToRouterProtocol {
    
}
