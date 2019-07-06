//
//  ViewController.swift
//  Assignment4-3
//
//  Created by 黃建程 on 2019/7/6.
//  Copyright © 2019 Spark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let jsonUrl = URL(string: "https://stations-98a59.firebaseio.com/practice.json")
        let decoder = JSONDecoder()
        
        guard let locationurl = jsonUrl else {
            print("URLinvalid")
            return
        }
        let task = URLSession.shared.dataTask(with: locationurl) { (data, response, error) in
            guard let data = data else {
                print("no data, or there was an error")
                return
            }
            print(data)
            
            let stationData = try? decoder.decode(stationJson.self, from: data)
            print(stationData!)
            DispatchQueue.main.async {
                self.stationNameLabel.text = stationData?.stationName
                self.stationIDLabel.text = stationData?.stationID
                self.stationAddressLabel.text = stationData?.stationAddress
            }
        
        }
        task.resume()
    }
}

