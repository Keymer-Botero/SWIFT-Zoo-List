//
//  ZooTableViewController.swift
//  Redux Project 7 Zoo
//
//  Created by carlos botero on 12/11/18.
//  Copyright © 2018 KeyB. All rights reserved.
//

import UIKit

class ZooTableViewController: UITableViewController {
    
    
    var zooExhibit : [Animal] = Array()
    /*
     var selectedAnimalName : String = ""
     var selectedLongBio : String = ""
     var selectedAnimalPicture : UIImage? = nil
     */
    
    let hyena = Animal(speciesName : "Hyena", shortDescription: "Doggo", longBio: "Boooorf", mainImage:  UIImage(named: "Hyena2")!, thumbnail: UIImage(named: "Hyena")!)
    
    let chincilla = Animal(speciesName: "Chinchilla", shortDescription: "rodent monkey", longBio: "YOU'RE A RAAAAAT", mainImage: UIImage(named: "Chinchilla2")!, thumbnail: UIImage(named: "Chinchilla")!)
    
    let redPanda = Animal(speciesName: "Red Panda", shortDescription: "Japanese BEar", longBio: "Weeb Bear", mainImage: UIImage(named : "RedPanda2")!, thumbnail: UIImage(named: "RedPanda")!)
    
    let axolotl = Animal(speciesName: "Axolotl", shortDescription: "Sea Dog", longBio: "Mexican Salamander", mainImage: UIImage(named: "Axolotl2")!, thumbnail: UIImage(named: "Axolotl")!)
    
    let seaLion = Animal(speciesName: "Sea Lion", shortDescription: "Lion of the Seas", longBio: "Sounds like a dog", mainImage: UIImage(named: "SeaLion2")!, thumbnail: UIImage(named: "SeaLion")!)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self

        zooExhibit.append(hyena)
        zooExhibit.append(chincilla)
        zooExhibit.append(redPanda)
        zooExhibit.append(axolotl)
        zooExhibit.append(seaLion)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.zooExhibit.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell                         {
            let cell = tableView.dequeueReusableCell(withIdentifier: "zooExhibit", for: indexPath) as! AnimalCellView

        // Configure the cell...
    
            cell.animalThumbnailImageView?.image = self.zooExhibit[indexPath.row].thumbnail
            cell.animalNameLabel?.text = self.zooExhibit[indexPath.row].speciesName
            cell.shortDescriptionLabel?.text =
            self.zooExhibit[indexPath.row].shortDescription
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    
    {
 
        let exhibitVC = storyboard?.instantiateViewController(withIdentifier: "speciesView") as! SpeciesView
        
        exhibitVC.targetAnimalName = self.zooExhibit[indexPath.row].speciesName
        exhibitVC.targetLongBio = self.zooExhibit[indexPath.row].longBio
        exhibitVC.targetAnimalPicture = self.zooExhibit[indexPath.row].mainImage!
        
        self.present(exhibitVC, animated:true, completion:nil)
        }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        //navigationController?.pushViewController(exhibitVC, animated: true)
        //incomingSpeciesExhibit.animalNameLabel?.text = selectedAnimalName
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
