//
//  Hotel.swift
//  Output11
//
//  Created by Victor Idongesit on 28/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//
import UIKit

class Hotel {
    //MARK: Properties
    var name: String
    var cover: UIImage
    var address: String
    var rating: String
    var distanceAway: String
    var coordinates: (Double, Double)?
    init?(name: String, cover: UIImage, address: String, rating: String, distanceAway: String) {
        self.name = name
        self.cover = cover
        self.address = address
        self.rating = rating
        self.distanceAway = distanceAway
        
        guard !name.isEmpty && !address.isEmpty else {
            return nil
        }
    }
    init?(name: String, cover: UIImage, address: String, rating: String, distanceAway: String, coordinates: (Double, Double)) {
        self.name = name
        self.cover = cover
        self.address = address
        self.rating = rating
        self.distanceAway = distanceAway
        self.coordinates = coordinates
        
        guard !name.isEmpty && !address.isEmpty else {
            return nil
        }
    }}
