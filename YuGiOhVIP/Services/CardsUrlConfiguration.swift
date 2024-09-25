//
//  CardsUrlConfiguration.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation

struct CardsUrlConfiguration {
    var metodo : String
    var host : String
    var path : PathsProtocol
    
    public init(metodo: String, host: String, path: PathsProtocol) {
        self.metodo = metodo
        self.host = host
        self.path = path
    }
    
    func configUrl() -> URL? {
        guard !host.isEmpty else { return nil }
        var componentes : URLComponents = URLComponents()
        componentes.scheme = metodo
        componentes.host = host
        componentes.path = path.pathToUse
        return componentes.url
    }
    
    
    
}
