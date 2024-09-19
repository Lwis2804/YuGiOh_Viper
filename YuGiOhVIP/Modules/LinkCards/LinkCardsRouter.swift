//  LinkCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class LinkCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = LinkCardsViewController()
        let presenter = LinkCardsPresenter()
        let interactor = LinkCardsInteractor()
        let router = LinkCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension LinkCardsRouter: LinkCards_PresenterToRouterProtocol {
    
}
