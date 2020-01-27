//
//  ViewController.swift
//  CarouselCollectionView
//
//  Created by Mohamed on 1/27/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var interestLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayOfImages:[UIImage] = [UIImage(named: "images1")! , UIImage(named: "image2")! , UIImage(named: "image3")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

    }


}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CustomCollectionCell
        
        let image = arrayOfImages[indexPath.row]
        
        cell.imageCollection.image = image
        
        return cell
    }
    
    
    
    
}
