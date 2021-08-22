//
//  SecondViewVC.swift
//  BInaryveda UI Task
//
//  Created by Vasim Khan on 8/21/21.
//

import UIKit

class SecondViewVC: UIViewController {
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "identifier")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        heightConstraint.constant = CGFloat((arts.count / 2)) * ((collectionView.frame.size.width + 6) / 2)
    }

    var arts : [Art] = [Art(image: "image_1"),
                        Art(image: "image_2"),
                        Art(image: "image_3"),
                        Art(image: "image_4"),
                        Art(image: "image_5"),
                        Art(image: "image_6")]
    
}


extension SecondViewVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arts.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        
        let art = arts[indexPath.row]
        cell.cellImageView.image = UIImage(named: art.image)
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 6) / 2
        
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }

}
