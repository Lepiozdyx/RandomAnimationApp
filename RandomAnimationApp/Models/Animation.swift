//
//  Animation.swift
//  RandomAnimationApp
//
//  Created by Alex on 02.05.2023.
//

struct Animation {
    
    let animation: String
    let curve: String
    let rotate: Double
    
    var description: String {
        """
        preset: \(animation)
        curve: \(curve)
        rotate: \(String(format: "%.02f", rotate))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            animation: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            rotate: Double.random(in: -5...5.0)
        )
    }
}
