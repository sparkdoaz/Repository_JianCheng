//
//  ViewController.swift
//  Homework3
//
//  Created by 黃建程 on 2019/6/29.
//  Copyright © 2019 Spark. All rights reserved.
//

import UIKit


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
        
        
        updateTextFiledWith()
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
        if let account = accountTextLabel.text, let password = passwordTextLabel.text, let checkPassowrd = checkLabel.text {
            do {
                try checkInput(account: account, password: password, checkPassword: checkPassowrd, logOrSign: indexLabel.selectedSegmentIndex)
            } catch CheckInputHaveError.accountIsEmpty {
                showPopAlert(title: "Error", message: "Account should not be empty")
            } catch CheckInputHaveError.passwordIsEmpty {
                showPopAlert(title: "Error", message: "Password should not be empty")
            } catch CheckInputHaveError.checkPasswordIsEmpty {
                showPopAlert(title: "Error", message: "CheckPassword should not be empty")
            } catch let error {
                fatalError("\(error)")
            }
        }
        if indexLabel.selectedSegmentIndex == 0 {
            do {
                guard let account = accountTextLabel.text, let password = passwordTextLabel.text else {
                    return
                }
                if try checkLogin(account: account, password: password) {
                    showPopAlert(title: "Login", message: "Welcome !")
                }
            } catch CheckLoginSignHaveError.loginFail {
                showPopAlert(title: "Error", message: "login Fail")
            } catch let error {
                fatalError("\(error)")
            }
        } else if indexLabel.selectedSegmentIndex == 1 {
            do {
                guard let account = accountTextLabel.text, let password = passwordTextLabel.text, let checkPassword = checkTexTLabel.text else {
                    return
                }
                if try checkSignUp(account: account, password: password, checkPassword: checkPassword) {
                    showPopAlert(title: "SignUp", message: "Welcome !")
                }
            } catch CheckLoginSignHaveError.signUpFail {
                showPopAlert(title: "Error", message: "Signup Fail")
            } catch let error {
                fatalError("\(error)")
            }
        }
        updateTextFiledWith(account: "", password: "", checkpassword: "")

    }
    
    func updateTextFiledWith(account: String? = nil, password: String? = nil, checkpassword: String? = nil) {
        
        if let accountValue = account {
            accountTextLabel.text = ""
        }
        if let passwordValue = password {
            passwordTextLabel.text = ""
        }
        if let checkpassordValue = checkpassword {
            checkTexTLabel.text = ""
        }
    }
    
    
    func showPopAlert(title: String, message: String, style: UIAlertController.Style = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)        // let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(sender: UIAlertAction) -> Void {
        updateTextFiledWith(account: nil, password: nil, checkpassword: nil)
    } //影片這邊打balance: 0 要改掉，算是留給我們的測試。


}


