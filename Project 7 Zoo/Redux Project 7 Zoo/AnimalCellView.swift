//
//  AnimalCellView.swift
//  Redux Project 7 Zoo
//
//  Created by carlos botero on 12/11/18.
//  Copyright © 2018 KeyB. All rights reserved.
//

import UIKit

class AnimalCellView: UITableViewCell {

    @IBOutlet weak var animalThumbnailImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
