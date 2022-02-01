//
//  CustomLabel.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/31/22.
//

import UIKit

class CustomLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        defaultSetup()
    }
    
    func defaultSetup(){
        let spacing = 1
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
}
