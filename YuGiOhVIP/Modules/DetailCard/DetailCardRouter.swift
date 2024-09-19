//  DetailCardRouter.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 11/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class DetailCardRouter {
	
    static func createModule() -> UIViewController {
        
        let view = DetailCardViewController()
        let presenter = DetailCardPresenter()
        let interactor = DetailCardInteractor()
        let router = DetailCardRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension DetailCardRouter: DetailCard_PresenterToRouterProtocol {
    
}
