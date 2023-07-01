//
//  ViewController.swift
//  LoginApp
//
//  Created by Alper Burak Öztürk on 31.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        
        
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if usernameTextField.text == "Alper" && passwordTextField.isHidden {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        } else {
            
            if usernameTextField.text != "Alper" {
                errorLabel.text = "Hata! Kullanıcı Adınız Yanlış"
                errorLabel.isHidden = false
            } else if !(passwordTextField.isHidden) && passwordTextField.text == "123456" {
                activityIndicator.startAnimating()
                errorLabel.isHidden = true
            } else {
                errorLabel.text = "Hata! Şifreniz yanlış lütfen tekrar deneyiniz"
                errorLabel.isHidden = false
            }
        }
        
    }
    
    
}

