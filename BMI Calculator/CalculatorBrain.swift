//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alline de Lara on 14.11.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    var bmiValue: BMI?
    
    
    
    mutating func calculateBmi(height: Float, kg: Float) {
        let bmi = kg/pow(height, 2)
        
        if(bmi < 18.5){
            self.bmiValue = BMI(value: String(format: "%.1f", bmi), advice: "Eat More pies", color:  UIColor.green)
        } else if ( bmi < 24.9){
            self.bmiValue = BMI(value: String(format: "%.1f", bmi), advice: "Great job", color:  UIColor.yellow)
        } else{
            self.bmiValue = BMI(value: String(format: "%.1f", bmi), advice: "Eat less pies", color:  UIColor.red)
        }
    }
    
    
}
