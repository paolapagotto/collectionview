//
//  ViewController.swift
//  collectionviewexercise
//
//  Created by Paola Pagotto on 30/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var arrayCars = ["carro1.png", "carro2.png", "carro3.png", "carro4.png"]
    
    
    @IBOutlet weak var collectionViewCars: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            collectionViewCars.delegate = self
            collectionViewCars.dataSource = self
    }
}


extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print("Clicou")
    }

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }

    func deleteItems(at indexPaths: [IndexPath]){
//        arrayCars.remove(at: indexPaths.drop)
//        collectionViewCars.reloadData()
        arrayCars.removeObjectAtIndex:[indexPath row];
        self.collectionView deleteItemsAtIndexPaths:@[indexPath];
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewCars.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        cell.setup(image: arrayCars[indexPath.row])
        return cell
    }

    
}
