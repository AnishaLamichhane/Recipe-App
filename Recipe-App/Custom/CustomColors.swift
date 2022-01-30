//
//  CustomColors.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 1/30/22.
//

import Foundation
import ChameleonFramework

struct  CustomColors{
    let orange: UIColor!
    
    init(withFrame: CGRect){
        let firstColor = HexColor("FF8C2B")!
        let secondColor = HexColor("FF6322")!
        orange = UIColor(gradientStyle:.leftToRight, withFrame:withFrame, andColors:[firstColor, secondColor])
    }

    func getOrangeColor() -> UIColor {
        return orange
    }
}
