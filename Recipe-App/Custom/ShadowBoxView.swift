//
//  ShadowBoxView.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 3/24/22.
//

import UIKit

class ShadowBoxView: UIView {
    override func draw(_ rect: CGRect) {
        applyShadow()
    }
    func applyShadow(){
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize(width: 0, height: 8)
        self.layer.shadowRadius = 4
        let radii = CGSize(width: 4, height: 4)
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: radii).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
}
