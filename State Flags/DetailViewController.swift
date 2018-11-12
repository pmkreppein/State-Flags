//
//  DetailViewController.swift
//  State Flags
//
//  Created by Peter M Kreppein on 10/22/18.
//  Copyright © 2018 Peter M Kreppein. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
   
    var state = ""
    
    @IBOutlet weak var stateNameLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateNameLabel.text = state
        let imageName = "\(state)"
        let image = UIImage(named: imageName)
        
        let flagImageView = UIImageView(image: image!)
        
        flagImageView.frame = CGRect(x: 60, y: 75, width: 200, height: 200 )
        view.addSubview(flagImageView)
        
    }
    

  

}
