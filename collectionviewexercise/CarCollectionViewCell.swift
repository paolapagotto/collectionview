//
//  CarCollectionViewCell.swift
//  collectionviewexercise
//
//  Created by Paola Pagotto on 30/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewCar: UIImageView!
    
    func setup (image: String) {
        imageViewCar.image = UIImage(named: image)
    }
}
