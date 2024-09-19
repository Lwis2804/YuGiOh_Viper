//  SynchroCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class SynchroCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = SynchroCardsViewController()
        let presenter = SynchroCardsPresenter()
        let interactor = SynchroCardsInteractor()
        let router = SynchroCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension SynchroCardsRouter: SynchroCards_PresenterToRouterProtocol {
    
}
