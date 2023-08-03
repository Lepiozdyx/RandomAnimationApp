//
//  RGBColor.swift
//  RandomAnimationApp
//
//  Created by Alex on 03.08.2023.
//

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    
    static func getRandomColor() -> RGBColor {
        return RGBColor(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}
