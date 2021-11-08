//
//  MenuCategoryViewController.swift
//  JarrodsMenu
//
//  Created by Jason Carter on 9/21/21.
//

import UIKit

class MenuCategoryViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UIWindowSceneDelegate {
      
    let menuCategory = [("Hot Beverages"),("Iced Beverages"),("Fresh Brewed Ice Tea"),("Blended"),("Smoothies"),("Pastry")]
    let menuCategoryImages = [UIImage(named: "Bags_of_Coffee"), UIImage(named: "Iced_Lattes"), UIImage(named: "Iced_Tea"), UIImage(named: "Blended_Lattes"), UIImage(named: "Smoothies"), UIImage(named: "Bagel_Sandwiches1")]
    var segueIdentifier: String = ""

    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuCategory.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
             segueIdentifier = "hotSegue"
        case 1:
             segueIdentifier = "icedSegue"
        case 2:
             segueIdentifier = "icedTeaSegue"
        case 3:
             segueIdentifier = "blendedSegue"
        case 4:
             segueIdentifier = "smoothieSegue"
        case 5:
             segueIdentifier = "pastrySegue"
        default: break
        }
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath as IndexPath) as! MenuCategoryTableViewCell
        cell.categoryLabel.text=self.menuCategory[indexPath.row]
        cell.categoryImage.image=self.menuCategoryImages[indexPath.row]
        return cell
    }
    
}

