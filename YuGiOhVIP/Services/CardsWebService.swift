//
//  CardsWebService.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation

protocol NetworkApiProtocol : AnyObject {
    var urlConfiguration : CardsUrlCoinfiguration { get set}
    func consumeService <T : Decodable> (withCompilationHandler handler : @escaping (Result <T, ErrorsWebService>) -> Void )
}

class CardsWebService : NetworkApiProtocol {
    var urlConfiguration: CardsUrlCoinfiguration
    
    init(urlConfiguration: CardsUrlCoinfiguration) {
        self.urlConfiguration = urlConfiguration
    }
    
    func consumeService<T>(withCompilationHandler handler: @escaping (Result<T, ErrorsWebService>) -> Void) where T : Decodable {
        guard let url = urlConfiguration.configUrl() else {
            handler(.failure(.wrongUrl))
            return
        }
        var strUrl = "\(url)"
        URLSession.shared.dataTask(with: .init(url : URL(string: strUrl) ?? URL(fileURLWithPath: ""))) {data, response,_ in
            
            guard let data = data, let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                handler(.failure(.wrongJson))
                return
            }
            
            if let json = try? JSONDecoder().decode(T.self, from: data) {
                handler(.success(json))
            }else{
                handler(.failure(.wrongResposne))
            }
        }.resume()
    }
}
