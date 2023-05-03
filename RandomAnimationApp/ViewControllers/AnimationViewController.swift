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
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var rotateLabel: UILabel!
    
    // MARK: - Private properties
    private var currentAnimation = Animation.getRandomAnimation()
    private var nextAnimation = Animation.getRandomAnimation()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setValue(for: animationLabel, curveLabel, rotateLabel)
    }
    
    // MARK: - IBAction
    @IBAction func runButtonTapped(_ sender: UIButton) {
        animationView.animation = currentAnimation.animation
        animationView.curve = currentAnimation.curve
        animationView.rotate = currentAnimation.rotate
        
        animationView.animate()
        
        currentAnimation = nextAnimation
        nextAnimation = Animation.getRandomAnimation()
        changeButtonTitle()
        setValue(for: animationLabel, curveLabel, rotateLabel)
    }
    
    // MARK: - Private methods
    private func changeButtonTitle() {
        runButton.setTitle("Run \(nextAnimation.animation)", for: .normal)
    }
    // завтра надо или убирай сендер, или убирай метод выше и менять название кнопки в экшине? так же подумай над очередностью вызова!
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case animationLabel: label.text = "Animation: \(currentAnimation.animation)"
            case curveLabel: label.text = "Curve: \(currentAnimation.curve)"
            default: label.text = String(format: "Rotate: %.1f", currentAnimation.rotate)
            }
        }
    }
    
}
