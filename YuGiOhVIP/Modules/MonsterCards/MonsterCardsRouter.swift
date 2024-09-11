//  MonsterCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MonsterCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = MonsterCardsViewController()
        let presenter = MonsterCardsPresenter()
        let interactor = MonsterCardsInteractor()
        let router = MonsterCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MonsterCardsRouter: MonsterCards_PresenterToRouterProtocol {
    
}
