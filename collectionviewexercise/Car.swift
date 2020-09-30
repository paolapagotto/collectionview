//
//  Car.swift
//  collectionviewexercise
//
//  Created by Paola Pagotto on 30/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import Foundation
import UIKit

class Car {
    var model: String
    var color: String
    var image: String
    init(model: String, color: String, image: String){
        self.model = model
        self.color = color
        self.image = image
    }
}
