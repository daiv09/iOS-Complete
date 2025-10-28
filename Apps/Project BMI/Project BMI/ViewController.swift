//
//  ViewController.swift
//  Project BMI
//
//  Created by SDC-USER1 on 03/09/25.
//

import UIKit

class ViewController:
UIViewController {
    var bmi: Double?
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        guard let heightText = heightInput.text,
                      let weightText = weightInput.text,
                      let heightCm = Double(heightText),
                      let weight = Double(weightText) else { return }
                
                let heightM = heightCm / 100.0
                bmi = weight / (heightM * heightM)
                
                performSegue(withIdentifier: "showResultSegue", sender: self)
    }
    
}

