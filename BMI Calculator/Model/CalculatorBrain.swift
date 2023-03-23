//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Musa Lawrence on 3/20/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit



struct CalculatorBrain {
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmi: BMI?
    
    mutating func setHeight(userHeight: Float) {
        height = userHeight
    }
    
    mutating func setWeight(userWeight: Float) {
        weight = userWeight
    }
    
    mutating func calculateBMI() {
        let bmiValue = weight / (height * height)
        
        let underWeightColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        let normalWeightColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        let overWeightColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: underWeightColor)
        } else if (bmiValue < 24.9 ){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: normalWeightColor)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: overWeightColor)
        }
    }
    
    func getBmi() -> BMI? {
        return bmi
    }
    
    func getHeight() -> String {
        return String(format: "%.2f", height)
    }
    
    func getWeight() -> String {
        return String(format: "%.0f", weight)
    }
}
