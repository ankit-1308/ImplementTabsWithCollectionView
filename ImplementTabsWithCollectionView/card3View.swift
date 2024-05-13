//
//  card3View.swift
//  ImplementTabsWithCollectionView
//
//  Created by OLX on 13/05/24.
//

import UIKit

class card3View: UIViewController {

    
    
    
    var cardImage:[String] = ["2C", "2D", "2H", "2S", "3C"]
    
    var cardName:[String] = ["cardNo 1", "cardNo 2", "cardNo 3", "cardNo 4", "cardNo 4"]
    
    
    
    @IBOutlet weak var card3CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
            card3CollectionView.dataSource = self
            card3CollectionView.delegate = self
            
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension card3View:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! card3ViewCell
        
        cell.imageCard3View.image = UIImage(named: cardImage[indexPath.row])
        cell.labelCard3Name.text = cardName[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 2
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width - 10)/2
        return CGSize(width: size, height: 200)
    }
    
    
}
