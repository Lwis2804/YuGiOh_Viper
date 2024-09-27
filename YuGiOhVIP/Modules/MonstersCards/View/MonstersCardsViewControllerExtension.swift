//
//  MonstersCardsViewControllerExtension.swift
//  YuGiOhVIP
//
//  Created by LUIS GONZALEZ on 25/09/24.
//
import UIKit


extension MonstersCardsViewController : UICollectionViewDelegate & UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getCardsMonsters?.count ?? 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: MonsterCardsCollectionViewCell.identifier, for: indexPath) as? MonsterCardsCollectionViewCell else { return MonsterCardsCollectionViewCell() }
            let arrSetUpCards = isFiltering ? arrCardFilter : getCardsMonsters
        cCell.setUpCardList(categoria: arrSetUpCards?[indexPath.row])
        return cCell
    }
    
    
}

extension MonstersCardsViewController : UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(100.0), height: CGFloat(140.0))
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

}
