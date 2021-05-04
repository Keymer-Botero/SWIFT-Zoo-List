//
//  SpeciesView.swift
//  Redux Project 7 Zoo
//
//  Created by carlos botero on 12/11/18.
//  Copyright © 2018 KeyB. All rights reserved.
//

import UIKit

class SpeciesView: UIViewController {

    var targetAnimalName : String = ""
    var targetLongBio : String = ""
    var targetAnimalPicture : UIImage? = nil
    
    @IBOutlet weak var animalNameLabel: UILabel!
    
    @IBOutlet weak var pictureOfAnimalImageView: UIImageView!
    @IBOutlet weak var longBioTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalNameLabel.text! = targetAnimalName
        longBioTextView.text = targetLongBio
        pictureOfAnimalImageView?.image = targetAnimalPicture
        
        //print(targetAnimalName)
       // print(targetLongBio)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
    }
 

}



//let oncomingSpeciesExhibit = segue.destination as! ZooTableViewController

//oncomingSpeciesExhibit
// Get the new view controller using segue.destination.
// Pass the selected object to the new view controller.
