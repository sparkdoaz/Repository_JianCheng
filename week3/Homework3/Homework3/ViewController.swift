//
//  ViewController.swift
//  Homework3
//
//  Created by 黃建程 on 2019/6/29.
//  Copyright © 2019 Spark. All rights reserved.
//

import UIKit

enum CheckInputHaveError: Error {
    case accountIsEmpty
    case passwordIsEmpty
    case checkPasswordIsEmpty
}
enum CheckLoginHaveError: Error {
    case loginFail
    case s
}
class ViewController: UIViewController {

    @IBOutlet weak var checkTexTLabel: UITextField!
    @IBOutlet weak var accountTextLabel: UITextField!
    @IBOutlet weak var passwordTextLabel: UITextField!
    
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBOutlet weak var indexLabel: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkLabel.textColor = UIColor.gray
        checkTexTLabel.isUserInteractionEnabled = false
        checkTexTLabel.backgroundColor = UIColor.gray
    }

    @IBAction func indexSwitch(_ sender: UISegmentedControl) {
        if indexLabel.selectedSegmentIndex == 0 {
            checkLabel.textColor = UIColor.gray
            checkTexTLabel.isUserInteractionEnabled = false
            checkTexTLabel.backgroundColor = UIColor.gray
        } else {
            checkLabel.textColor = UIColor.black
            checkTexTLabel.isUserInteractionEnabled = true
            checkTexTLabel.backgroundColor = UIColor.white
        }
    }

    @IBAction func loginButton() {
        do {
            guard let account = accountTextLabel.text, let password = passwordTextLabel.text, let checkPassowrd = checkLabel.text  else {
                return
            }
             try checkUserInput(account: account, password: password, checkPassword: checkPassword, status: layout.stateSegment.selectedSegmentIndex)
            
            
            
            
            
        }
    }
    

}

