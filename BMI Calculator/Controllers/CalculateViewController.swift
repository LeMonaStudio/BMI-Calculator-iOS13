//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        calculatorBrain.setHeight(userHeight: sender.value)
        updateUI()
    }

    @IBAction func weightSliderChange(_ sender: UISlider) {
        calculatorBrain.setWeight(userWeight: sender.value)
        updateUI()
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    
    func updateUI() {
        heightLabel.text = "\(calculatorBrain.getHeight())m"
        weightLabel.text = "\(calculatorBrain.getWeight())kg"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
        }
    }
    
}

  
