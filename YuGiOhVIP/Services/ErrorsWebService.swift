//
//  ErrorsWebService.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation

enum ErrorsWebService : Error {
    case wrongUrl
    case wrongJson
    case wrongResposne
    
    func getMessage() -> String {
        switch self {
        case .wrongUrl:
            return "La URL esta mal"
        case .wrongJson:
            return "Fallo el Json"
        case .wrongResposne:
            return "No hay respuesta del servidor"
        }
    }
}
