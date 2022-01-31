
//  StyleButton.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/31/22.
//

import UIKit
extension UIButton{
//    orange color button
    func defaultSetup(frame: CGRect) {
        let orange = CustomColors(withFrame: frame).getOrangeColor()
        layer.backgroundColor = orange.cgColor
        layer.cornerRadius = frame.height/2
        layer.masksToBounds = true
    }
//    for spacing
    func addTextSpacing(spacing: CGFloat){
        let attributedString = NSMutableAttributedString(string: (self.titleLabel?.text!)!)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length))
        self.setAttributedTitle(attributedString, for: .normal)
    }
//    white button
    func makeCustomWhiteBtn(frame: CGRect){
        let orange = CustomColors(withFrame: frame).getOrangeColor()
        layer.borderWidth = 2
        backgroundColor = .white
        layer.borderColor = orange.cgColor
        layer.cornerRadius = frame.height/2
        layer.masksToBounds = true
    }
    
}

extension UILabel{
    func addTextSpacing(spacing: CGFloat){
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
}

