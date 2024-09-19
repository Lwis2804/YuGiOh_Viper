//  TokenCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class TokenCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = TokenCardsViewController()
        let presenter = TokenCardsPresenter()
        let interactor = TokenCardsInteractor()
        let router = TokenCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension TokenCardsRouter: TokenCards_PresenterToRouterProtocol {
    
}
