//
//  LoginSignupViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/30/22.
//

import UIKit

class LoginSignupViewController: UIViewController {
    //    UI View properties
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var dontHaveAccLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    //    sets up the UI elements
    func setUpProperties() {
        let orange = CustomColors(withFrame: loginButton.frame).getOrangeColor()
        //        loginButton
        loginButton.layer.backgroundColor = orange.cgColor
        loginButton.layer.cornerRadius = loginButton.frame.height/2
        btnSpacing(button: loginButton)
        
        //        signUpButton
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = orange.cgColor
        signUpButton.layer.cornerRadius = loginButton.frame.height/2
        
    }
    
    func btnSpacing(button: UIButton) {
        guard let buttonTitle = button.title(for: .normal) else { return }
        let attributedTitle = NSAttributedString(string: buttonTitle, attributes: [NSAttributedString.Key.kern: 4])
        button.setAttributedTitle(attributedTitle, for: .normal)
    }
    
}
