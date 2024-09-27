//
//  CardsWebService.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 04/09/24.
//

import Foundation

protocol NetworkApiProtocol : AnyObject {
    var urlConfiguration : CardsUrlConfiguration { get set }
    func consumeService <T : Decodable> (withCompilationHbadler handler : @escaping (Result <T, ErrorsWebService>) -> Void)
}

class CardsWebService : NetworkApiProtocol {
    var urlConfiguration: CardsUrlConfiguration
    
    init(urlConfiguration: CardsUrlConfiguration) {
        self.urlConfiguration = urlConfiguration
    }
    
    func consumeService<T>(withCompilationHbadler handler: @escaping (Result<T, ErrorsWebService>) -> Void) where T : Decodable {
        guard let url = urlConfiguration.cofingUrl() else {
            handler(.failure(.wrongUrl))
            return
        }
        let strUrl = "\(url)"
        URLSession.shared.dataTask(with: .init(url : URL(string: strUrl) ?? URL(fileURLWithPath: ""))) { data, response, _ in
            guard let data = data, let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                handler(.failure(.wrongResposne))
                return
            }
            
            if let json = try? JSONDecoder().decode(T.self, from: data) {
                handler(.success(json))
            }else {
                handler(.failure(.wrongResposne))
                }
        }.resume()
        }
    }





