//
//  ViewController.swift
//  RandomAnimationApp
//
//  Created by Alex on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.randomAnimation
    
    // MARK: - IBAction
    @IBAction func runButtonTapped(_ sender: UIButton) {
        descriptionLabel.text = animation.description
        
        animationView.animation = animation.animation
        animationView.curve = animation.curve
        animationView.rotate = animation.rotate
        animationView.backgroundColor = UIColor(color: animation.color)
        
        animationView.animate()
        
        animation = Animation.randomAnimation
        sender.setTitle("Run \(animation.animation)", for: .normal)
    }
    
}
