//
//  TableViewController.swift
//  DemoSwift
//
//  Created by Miguel on 1/2/18.
//  Copyright © 2018 Miguel Rodríguez Alonso. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //MARK: Properties
    var recipes = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        recipes += ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburguer", "Ham and Egg Sandwich"]
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("The dequeued cell is not an instance of TableViewCell.")
        }
        
        let recipe = recipes[indexPath.row]
        cell.nameLabel.text = recipe
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }

    

}
