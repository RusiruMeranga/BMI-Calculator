//
//  ViewController.swift
//  BMI Calculator
//
//  Created by USER on 2021/08/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var HeightTextField: UITextField!
    
    @IBOutlet weak var WeightTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        var classification:String
        var weight:Double = 0
        var height:Double = 0
        if let weightText = WeightTextField.text{
            if let weightDouble = Double(weightText){
                weight = weightDouble
            }
        }
        
        if let heightText = HeightTextField.text{
            if let heightDouble = Double(heightText){
                height = heightDouble
            }
        }
        
        let bmi = weight/(height * height)
        
        if bmi < 18.5{
            classification = "Underweight"
        }
        else if bmi < 24.9 {
            classification = "Healthy Weight"
        }
        else if bmi < 29.9 {
            classification = "Overweight"
        }
        else{
            classification = "Obese"
        }
        
        let formattedBMI = String(format:"%.2f",bmi)
        resultLabel.text = "BMI : \(formattedBMI),\(classification)"
    
        
    }
    
}

