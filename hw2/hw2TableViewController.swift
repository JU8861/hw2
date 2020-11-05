//
//  hw2TableViewController.swift
//  hw2
//
//  Created by NDHU_CSIE on 2020/11/5.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class hw2TableViewController: UITableViewController {
    
    @IBOutlet var totalPrice : UILabel?
    
    var fruitnames = ["Watermelon", "Apple", "Orange", "Strawberry", "Pear"]
    var fruitprices = ["500", "100", "90", "200", "150"]
    var select = Array(repeating: false, count: 5)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruitnames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath) as! hw2TableViewCell

        cell.name.text = fruitnames[indexPath.row]
        cell.price.text = String(fruitprices[indexPath.row])
        cell.fruit.image = UIImage(named: "fruit")

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        select[indexPath.row] = !select[indexPath.row]
        
        if select[indexPath.row] {
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }
        
        var sum = 0
        
        for i in 0...(select.count-1) {
            if select[i] {
                sum += Int(fruitprices[i]) ?? 0
            }
        }
        
        totalPrice?.text = "Total Price = " + String(sum)
    }
}
