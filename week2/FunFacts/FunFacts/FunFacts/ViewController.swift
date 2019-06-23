//
//  ViewController.swift
//  FunFacts
//
//  Created by 黃建程 on 2019/6/23.
//  Copyright © 2019 Spark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
     let factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        funFactLabel.text = factProvider.randomFact()
    }

    @IBAction func showFact() {
       
        
        funFactLabel.text = factProvider.randomFact()
    }
    
}

