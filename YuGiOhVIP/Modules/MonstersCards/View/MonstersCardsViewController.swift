//  MonstersCardsViewController.swift
//  YuGiOhVIP
//  Created by LUIS GONZALEZ on 23/09/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MonstersCardsViewController: UIViewController {
    
    
    @IBOutlet weak var monstersCollectionView: UICollectionView!
    
    
    var presenter: MonstersCards_ViewToPresenterProtocol?
    let search = UISearchController(searchResultsController: nil)
   // var isSearchEmpty : Bool {return search.searchBar.text?.isEmpty ?? true}
    var isFiltering : Bool {return search.isActive/* && !isSearchEmpty*/}
    var arrCardFilter : [DataCard] = []
    var getCardsMonsters : [DataCard]?
   

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getToMonstersCards()
        setUpCollectionView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.activityStartAnimating(activityColor: .white, backgroundColor: UIColor.black.withAlphaComponent(0.5))
    }
    
    
    func setUpCollectionView() {
        self.monstersCollectionView.delegate = self
        self.monstersCollectionView.dataSource = self
        self.monstersCollectionView.register(MonsterCardsCollectionViewCell.nib, forCellWithReuseIdentifier: MonsterCardsCollectionViewCell.identifier)
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MonstersCardsViewController: MonstersCards_PresenterToViewProtocol {
    func updateMonstersCards(withResponse response: [DataCard]) {
        
        self.getCardsMonsters = self.getAndSplitCard(with: response, andType: "Effect Monster")
        DispatchQueue.main.async {
            self.monstersCollectionView.reloadData()
            self.view.activityStopAnimating()
        }
    }
    
    
}
