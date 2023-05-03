//
//  Animation.swift
//  RandomAnimationApp
//
//  Created by Alex on 02.05.2023.
//

import Foundation

struct Animation {
    
    let animation: String
    let curve: String
    let rotate: Double
    
    static func getRandomAnimation() -> Animation {
        Animation(
            animation: DataStore.shared.animations.randomElement() ?? "",
            curve: DataStore.shared.curves.randomElement() ?? "",
            rotate: Double.random(in: -5...5.0)
        )
    }
}
