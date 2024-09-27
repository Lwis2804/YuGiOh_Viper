//  MonstersCardsProtocols.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 23/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Si queremos ir a otro modulo VIPER
 
    * goTo___________( )
    * goTo___________( _ : )
 
 Si queremos ir por datos o hacer un consumo
    * viewDidLoad()
    * getTo___________( )
    * getTo___________( _ : )
 */

// MARK: VIEW -> PRESENTER
protocol MonstersCards_ViewToPresenterProtocol: AnyObject {
	var view: MonstersCards_PresenterToViewProtocol? { get set }
	var interactor: MonstersCards_PresenterToInteractorProtocol? { get set }
	var router: MonstersCards_PresenterToRouterProtocol? { get set }
    
    func getToMonstersCards()
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

/**
 Sugerencias en el llamado de Funciones de  Presenter a Interactor
 :condiciones:
 
 Tratemos que la funcion se llame igual que desde la que viene en la vista al Presenter,
 pero en esta ocacion agregemosle el subfijo: 'ToInteractor', para saber que vamos
 del presenter al iintectartor
 
    * get___________ToInteractor( )
    * getTo___________ToInteractor( )
 
    * get___________ToInteractor( _ : )
    * getTo___________ToInteractor( _ : )
 
 */

// MARK: PRESENTER -> INTERACTOR
protocol MonstersCards_PresenterToInteractorProtocol: AnyObject {
    var presenter: MonstersCards_InteractorToPresenterProtocol? { get set }
    
    func getMonstersCardsToInteractor()
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Tratemos que la funcion se llame igual que desde la que viene en la vista al Presenter,
 pero en esta ocacion agregemosle el subfijo: 'FromInteractor' con los parametros que correspondan,
 para saber que vamos del Interactor  al Presenter
 
    * get___________FromInteractor( )
    * getTo___________FromInteractor( )
 
    * get___________FromInteractor(_ :)
    * getTo___________FromInteractor(_ :)
 */

// MARK: INTERACTOR -> PRESENTER
protocol MonstersCards_InteractorToPresenterProtocol: AnyObject {
    
    func getMonstersCardsFromInteractor(withResponse response: [DataCard])
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Tratemos de usar la funcion updateView(_ :), con los parametros que correspondan, para
 saber que vamos del Presenter a la Vista.
 
    * updateView(_: )
 
 */

// MARK: PRESENTER -> VIEW
protocol MonstersCards_PresenterToViewProtocol: AnyObject {
    var presenter: MonstersCards_ViewToPresenterProtocol? { get set }
    
    func updateMonstersCards(withResponse response : [DataCard])
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Si queremos ir a otro modulo VIPER, usemos goTo_________( _ : ), con parametros si es necesario para
 asegurar que vamos del Presenter a el Router de otro Modulo VIPER.
 
    * goTo___________( _ : )
 */

// MARK: PRESENTER -> ROUTER
protocol MonstersCards_PresenterToRouterProtocol: AnyObject {
}

protocol PathsProtocol {
    var pathToUse : String { get } // NO ME QUEDA MUY CLARO EL USO DE ESTA VARIABLE, ES SOLO DE LECTURA PERO COMO LA ESTOY USANDO
}
