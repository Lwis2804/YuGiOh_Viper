//  PendulumCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class PendulumCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = PendulumCardsViewController()
        let presenter = PendulumCardsPresenter()
        let interactor = PendulumCardsInteractor()
        let router = PendulumCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension PendulumCardsRouter: PendulumCards_PresenterToRouterProtocol {
    
}
