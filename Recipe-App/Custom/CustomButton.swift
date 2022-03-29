//
//  CustomButton.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/31/22.
//

import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        defaultSetup()
    }
    
    func defaultSetup() {
        let orange = UIColor.orange
        layer.backgroundColor = orange.cgColor
        layer.borderWidth = 2
        layer.borderColor = orange.cgColor
        layer.cornerRadius = frame.height/2
        layer.masksToBounds = true
        
        //       for spacing
        let spacing = 1.5
        let attributedString = NSMutableAttributedString(string: (self.titleLabel?.text!)!)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length))
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
    func makeCustomWhiteButton() {
        let orange = UIColor.orange
        layer.borderWidth = 2
        backgroundColor = .white
        layer.borderColor = orange.cgColor
        layer.cornerRadius = frame.height/2
        layer.masksToBounds = true
    }
}


