//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Alline de Lara on 13.11.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String = ""
    var adviceValue: String = ""
    var colorValue: UIColor = UIColor.white

    @IBOutlet weak var advice: UILabel!
    @IBOutlet weak var bmiLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        advice.text = adviceValue
        bmiLable.text = bmiValue
        view.backgroundColor = colorValue
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
