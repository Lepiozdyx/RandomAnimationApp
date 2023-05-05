//
//  DataStore.swift
//  RandomAnimationApp
//
//  Created by Alex on 02.05.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
