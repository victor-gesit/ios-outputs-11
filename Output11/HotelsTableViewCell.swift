//
//  HotelsTableViewCell.swift
//  Output11
//
//  Created by Victor Idongesit on 28/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

class HotelsTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var coverPreview: UIImageView!
    @IBOutlet weak var hotelName: UILabel!
    @IBOutlet weak var hotelDistanceAway: UILabel!
    @IBOutlet weak var hotelAddress: UILabel!
    @IBOutlet weak var hotelRating: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
