//
//  MenuItemDetailViewController.swift
//  JarrodsMenuRev
//
//  Created by Jason Carter on 4/4/22.
//

import UIKit

class MenuItemDetailViewController: UIViewController {

    // MenuItem selected from MenuTableViewController
    var menuItem: MenuItem!
    
    // delegate to add item to order
    var delegate: AddToOrderDelegate?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var price1Label: UILabel!
    @IBOutlet weak var price2Label: UILabel!

    @IBOutlet weak var size1Label: UILabel!
    @IBOutlet weak var size2Label: UILabel!
    
    @IBOutlet weak var addToOrderButton1: UIButton!
    @IBOutlet weak var addToOrderButton2: UIButton!
    
    // bounce animation after addToOrder buttons pressed
    @IBAction func addToOrderButton1Tapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton1.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.addToOrderButton1.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
            delegate?.added(menuItem: menuItem)
    }
    
    @IBAction func addToOrderButton2Tapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) { [self] in
            self.addToOrderButton2.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.addToOrderButton2.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
        delegate?.added(menuItem: menuItem)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // update the screen with menuItem values
        updateUI()
        
        // setup the delegate
        setupDelegate()
    }
    
    // update the screen with menuItem values
    func updateUI() {
        titleLabel.text = menuItem.name
        
        price1Label.text = String(format: "$%.2f", menuItem.price1)
        price2Label.text = String(format: "$%.2f", menuItem.price2)

        size1Label.text = menuItem.size1
        size2Label.text = menuItem.size2

        addToOrderButton1.layer.cornerRadius = 5
        addToOrderButton2.layer.cornerRadius = 5

        // get the image for the menu item
        MenuController.shared.fetchImage(url: menuItem.imageURL) { image in
            guard let image = image else { return }
            
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    // find order table view controller
    func setupDelegate() {
        if let navController = tabBarController?.viewControllers?.last as? UINavigationController,
            let orderTableViewController = navController.viewControllers.first as? OrderTableViewController {
            delegate = orderTableViewController
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}


