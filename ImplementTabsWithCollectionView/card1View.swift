//
//  card1View.swift
//  ImplementTabsWithCollectionView
//
//  Created by OLX on 13/05/24.
//

import UIKit

class card1View: UIViewController {

    
    var cardImage:[String] = ["2C", "2D", "2H", "2S", "3C"]
    
    var cardName:[String] = ["cardNo 1", "cardNo 2", "cardNo 3", "cardNo 4", "cardNo 4"]
    
    
    
    
    
    
    @IBOutlet weak var card1CollectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
            card1CollectionView.dataSource = self
            card1CollectionView.delegate = self
            
        
    }
    

   
}



extension card1View:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! card1ViewCell
        
        cell.imageCard1View.image = UIImage(named: cardImage[indexPath.row])
        cell.labelCard1Name.text = cardName[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 2
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width - 10)/2
        return CGSize(width: size, height: 200)
    }
    
    
}
