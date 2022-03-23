//
//  LoginSignupViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/30/22.
//

import UIKit

class LoginSignupViewController: UIViewController {
    //    UI View properties
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var dontHaveAccLabel: CustomLabel!
    @IBOutlet weak var signUpButton: CustomButton!
    
//    hides the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
//    first loading function
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    //    sets up the UI elements
    func setUpProperties() {
        signUpButton.makeCustomWhiteButton()
        
    }
    
    func btnSpacing(button: UIButton) {
        guard let buttonTitle = button.title(for: .normal) else { return }
        let attributedTitle = NSAttributedString(string: buttonTitle, attributes: [NSAttributedString.Key.kern: 4])
        button.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.navigationItem.hidesBackButton = true

    }
  
    
}
