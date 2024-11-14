//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CallculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var kgLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var kgSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBAction func changeHeight(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func changeKg(_ sender: UISlider) {
        kgLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculatedPressed(_ sender: UIButton) {
      
        self.performSegue(withIdentifier: "goResults", sender: self)
        calculatorBrain.calculateBmi( height: heightSlider.value, kg: kgSlider.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goResults" {
            let destination = segue.destination as! ResultsViewController
            destination.bmiValue = calculatorBrain.bmiValue?.value ?? ""
            destination.adviceValue = calculatorBrain.bmiValue?.advice ?? " "
            destination.colorValue = calculatorBrain.bmiValue?.color ?? UIColor.white
        }
    }
}

