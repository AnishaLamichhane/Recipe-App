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
        loginButton.defaultSetup(frame: loginButton.frame)
        loginButton.addTextSpacing(spacing: 1.5)
        signUpButton.makeCustomWhiteBtn(frame: signUpButton.frame)
        signUpButton.addTextSpacing(spacing: 1.5)
        dontHaveAccLabel.addTextSpacing(spacing: 1.5)
        
        
    }
    
    func btnSpacing(button: UIButton) {
        guard let buttonTitle = button.title(for: .normal) else { return }
        let attributedTitle = NSAttributedString(string: buttonTitle, attributes: [NSAttributedString.Key.kern: 4])
        button.setAttributedTitle(attributedTitle, for: .normal)
    }
    
}
