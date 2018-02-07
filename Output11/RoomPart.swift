//
//  RoomPart.swift
//  Output11
//
//  Created by Victor Idongesit on 30/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

class RoomPart {
    let roomPartImage: UIImage
    let roomPartName: String
    init?(roomPartName: String, roomPartImage: UIImage) {
        self.roomPartName = roomPartName
        self.roomPartImage = roomPartImage
        guard !roomPartName.isEmpty else {
            return nil
        }
    }
}
