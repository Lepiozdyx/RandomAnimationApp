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
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(animation)
        curve: \(curve)
        rotate: \(String(format: "%.02f", rotate))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            animation: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            rotate: Double.random(in: -5...5.0),
            duration: Double.random(in: 0.8...1.5),
            delay: 1
        )
    }
}
