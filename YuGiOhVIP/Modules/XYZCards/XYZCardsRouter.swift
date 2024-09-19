//  XYZCardsRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class XYZCardsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = XYZCardsViewController()
        let presenter = XYZCardsPresenter()
        let interactor = XYZCardsInteractor()
        let router = XYZCardsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension XYZCardsRouter: XYZCards_PresenterToRouterProtocol {
    
}
