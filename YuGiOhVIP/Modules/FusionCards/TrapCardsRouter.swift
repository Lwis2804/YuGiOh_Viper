//  TrapCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class TrapCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = TrapCardsViewController()
        let presenter = TrapCardsPresenter()
        let interactor = TrapCardsInteractor()
        let router = TrapCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension TrapCardsRouter: TrapCards_PresenterToRouterProtocol {
    
}
