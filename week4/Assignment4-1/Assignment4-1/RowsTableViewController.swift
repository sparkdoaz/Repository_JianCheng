//
//  RowsTableViewController.swift
//  Assignment4-1
//
//  Created by 黃建程 on 2019/7/5.
//  Copyright © 2019 Spark. All rights reserved.
//

import UIKit

class RowsTableViewController: UITableViewController {
    
    var rows = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    //var sectionOfNumber = [ "0" ]
    var sectionOfNumber = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1 //sectionOfNumber.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rows.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowsCell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! RowsCell
        //rowsCell.textLabel?.text = rows[indexPath.row]
        rowsCell.rowsTextLabel.text = "This is Section \(sectionOfNumber), Row \(rows[indexPath.row])"
        
        return rowsCell
    }

    

}
