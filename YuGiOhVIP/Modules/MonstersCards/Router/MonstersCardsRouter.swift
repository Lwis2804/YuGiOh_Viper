//  MonstersCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 23/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MonstersCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = MonstersCardsViewController()
        let presenter = MonstersCardsPresenter()
        let interactor = MonstersCardsInteractor()
        let router = MonstersCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MonstersCardsRouter: MonstersCards_PresenterToRouterProtocol {
    
}
