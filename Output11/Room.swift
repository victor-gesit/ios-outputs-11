//
//  Room.swift
//  Output11
//
//  Created by Victor Idongesit on 29/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

class Room {
    var name: String
    var image: UIImage
    var cost: String
    init?(name: String, image: UIImage, cost: String) {
        self.name = name
        self.image = image
        self.cost = cost
        guard !name.isEmpty && !cost.isEmpty else {
            return nil
        }
    }
}
