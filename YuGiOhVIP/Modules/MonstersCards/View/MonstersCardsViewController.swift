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
    var isSearchEmpty : Bool {return search.searchBar.text?.isEmpty ?? true}
    var isFiltering : Bool {return search.isActive && !isSearchEmpty}
    var arrCardFilter : [DataCard] = []
    var getCardsMonsters : [DataCard]?
   

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getToMonstersCards()
        setUpCollectionView()
        setUpSearchBar()
        setUpSearchBarProperties()
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
    
    
    private func setUpSearchBar() {
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.searchTextField.placeholder = "Search your Card"
        self.navigationItem.searchController = search
        definesPresentationContext = true
    }
    
    private func setUpSearchBarProperties() {
        search.automaticallyShowsCancelButton = true
        search.automaticallyShowsScopeBar = true
        search.automaticallyShowsSearchResultsController = true
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MonstersCardsViewController: MonstersCards_PresenterToViewProtocol {
    func updateMonstersCards(withResponse response: CardResponse) {
        
        self.getCardsMonsters = self.getAndSplitCard(with: response.dataCard ?? [], andType: "Effect Monster")
        DispatchQueue.main.async {
            self.monstersCollectionView.reloadData()
            self.view.activityStopAnimating()
        }
    }
}
