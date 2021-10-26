//
//  ProfileViewController.swift
//  SecondChance
//
//  Created by Alexander Tepper on 25/10/2021.
//

import UIKit

class ProfileViewController: UIViewController{
    

    @IBOutlet weak var photosCollectionViewController: UICollectionView!
    
    let reuseIdentifierCustomCell = "reuseIdentifierCustomCell"
    
    
    
    var picturesArray = [UIImage]()
    
    func fillPicturesArray() {
        let photo1 = UIImage(named: "2")!
        let photo2 = UIImage(named: "3")!
        let photo3 = UIImage(named: "4")!
        let photo4 = UIImage(named: "5")!
        picturesArray.append(photo1)
        picturesArray.append(photo2)
        picturesArray.append(photo3)
        picturesArray.append(photo4)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillPicturesArray()
        photosCollectionViewController.register(UINib(nibName: "MainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifierCustomCell)
        photosCollectionViewController.dataSource = self
        
    }
    
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 20, height: 20)
    }
}

extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picturesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = photosCollectionViewController.dequeueReusableCell(withReuseIdentifier: reuseIdentifierCustomCell, for: indexPath) as? MainCollectionViewCell else {return UICollectionViewCell()}
        
        cell.configure(image: picturesArray[indexPath.row])
        
        return cell
    }
}
