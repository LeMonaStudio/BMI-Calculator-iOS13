//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Musa Lawrence on 3/20/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation



struct CalculatorBrain {
    var height: Float = 0
    var weight: Float = 0
    var bmiValue: Float = 0
    
    mutating func setHeight(userHeight: Float) {
        height = userHeight
    }
    
    mutating func setWeight(userWeight: Float) {
        weight = userWeight
    }
    
    mutating func calculateBMI() {
        bmiValue = weight / (height * height)
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmiValue)
    }
    
    func getHeight() -> String {
        return String(format: "%.2f", height)
    }
    
    func getWeight() -> String {
        return String(format: "%.0f", weight)
    }
}
