//
//  CustomTextfield.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/31/22.
//

import UIKit

class CustomTextfield: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        defaultSetup()
    }
    
    func defaultSetup() {
        layer.borderWidth  = 1
        layer.borderColor = UIColor.orange.cgColor
    }
}
