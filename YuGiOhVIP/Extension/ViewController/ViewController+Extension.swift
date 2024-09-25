//
//  ViewController+Extension.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 25/09/24.
//

import UIKit


//MARK: - UI · V I E W · C O N T R O L L E R
extension UIViewController {
    func showAlert(WithTitle title: String, andMessage msg: String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true)
    }
    
    
    func getAndSplitCard(with cards: [DataCard], andType type:String) -> [DataCard] {
        var monsterCard: [DataCard] = []
        for monster in cards{
            if monster.type == type { monsterCard.append(monster)}
        }
        return monsterCard
    }
    

    
}
