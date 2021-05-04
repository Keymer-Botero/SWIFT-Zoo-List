//
//  AnimalDataSet.swift
//  Redux Project 7 Zoo
//
//  Created by carlos botero on 12/11/18.
//  Copyright © 2018 KeyB. All rights reserved.
//

import Foundation
import UIKit

struct Animal
{
    var speciesName : String
    var shortDescription : String
    var longBio : String
    var mainImage : UIImage?
    var thumbnail : UIImage?
    /*
    init(){
        self.thumbnail = nil
        self.mainImage = nil
        self.longBio = ""
        self.shortDescription = ""
        self.speciesName = ""
    }*/
    
    init(speciesName : String, shortDescription : String, longBio : String, mainImage : UIImage, thumbnail : UIImage)
    {
        self.speciesName = speciesName
        self.shortDescription = shortDescription
        self.longBio = longBio
        self.mainImage = mainImage
        self.thumbnail = thumbnail
        
    }
}
