//  MagicCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MagicCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = MagicCardsViewController()
        let presenter = MagicCardsPresenter()
        let interactor = MagicCardsInteractor()
        let router = MagicCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MagicCardsRouter: MagicCards_PresenterToRouterProtocol {
    
}
