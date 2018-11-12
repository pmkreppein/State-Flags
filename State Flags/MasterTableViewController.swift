//
//  MasterTableViewController.swift
//  State Flags
//
//  Created by Peter M Kreppein on 10/22/18.
//  Copyright © 2018 Peter M Kreppein. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    let states = ["Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "Florida",
    "Georgia",
    "Hawaii",
    "Idaho",
    "Illinois",
    "Indiana",
    "Iowa",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Maine",
    "Maryland",
    "Massachusetts",
    "Michigan",
    "Minnesota",
    "Mississippi",
    "Missouri",
    "Montana",
    "Nebraska",
    "Nevada",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "New York",
    "North Carolina",
    "North Dakota",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Vermont",
    "Virginia",
    "Washington",
    "West Virginia",
    "Wisconsin",
    "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = states.count
        return count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let cellTitle = states[indexPath.row]
        cell.textLabel?.text = cellTitle
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let stateVC = segue.destination as? DetailViewController {
            if let state = sender as? String {
                stateVC.state = state
                
            }
        }
    }
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let state = states[indexPath.row]
            performSegue(withIdentifier: "StateDetailSegue", sender: state)
    }

}
