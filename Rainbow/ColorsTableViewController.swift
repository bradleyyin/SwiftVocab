//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Bradley Yin on 7/15/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors : [MyColor] = [MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Red", color: .red),
                             MyColor(name: "Yellow", color: .yellow)]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Rainbow"

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name

        // Configure the cell...

        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowColorDetailSegue"{
            guard let indexPath = tableView.indexPathForSelectedRow, let colorDetailVC = segue.destination as? ColorDetailViewController else{return}
            let cellColor = colors[indexPath.row]
            colorDetailVC.cellColor = cellColor
            
        }
    }
 

}
