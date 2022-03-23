//
//  SignUpViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 2/1/22.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    //    hides status bar
        override var prefersStatusBarHidden: Bool {
            return true
        }

    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.navigationItem.hidesBackButton = true

    }
}
