//
//  Extension+UIColor.swift
//  RandomAnimationApp
//
//  Created by Alex on 03.08.2023.
//

import UIKit

extension UIColor {
    convenience init(color: RGBColor) {
        self.init(
            red: CGFloat(color.red),
            green: CGFloat(color.green),
            blue: CGFloat(color.blue),
            alpha: 1
        )
    }
}
