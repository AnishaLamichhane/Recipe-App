//
//  LoginViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/31/22.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: CustomTextfield!
    @IBOutlet weak var passwordTextField: CustomTextfield!
    
    //    first loading function
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
     
    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //    hides status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    
}
