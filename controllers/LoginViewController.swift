//
//  LoginViewController.swift
//  SecondChance
//
//  Created by Alexander Tepper on 25/10/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.text = nil
        
        passwordTextField.text = nil
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            view.addGestureRecognizer(tap)

    }
    
    @IBAction func unwindToLogin(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        guard let login = usernameTextField.text else {return}
        
        guard let password = passwordTextField.text else {return}
        
        if login == "" && password == "" {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            usernameTextField.backgroundColor = UIColor.red
            passwordTextField.backgroundColor = UIColor.red
            print("wrong password")
        }
        
        
        
    }
    
}
