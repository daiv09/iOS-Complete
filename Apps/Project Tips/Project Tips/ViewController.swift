//
//  ViewController.swift
//  Project Tips
//
//  Created by SDC-USER on 05/08/25.
//

import UIKit

class ViewController: UIViewController {
    var no:Int = 0
    var tipAmt:Double=0
    @IBOutlet weak var noOfPeeps: UILabel!
    @IBOutlet weak var enteredAmount: UITextField!
    @IBAction func enteredAmt(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderTipPercent(_ sender: UISlider) {
        noOfPeeps.text=String(Int(sender.value))
    }
    @IBAction func incrementDecrement(_ sender: UIStepper) {
        noOfPeeps.text=String(Int(sender.value))
    }
    
    @IBAction func segmentedOptions(_ sender: UISegmentedControl) {
        let num=sender.selectedSegmentIndex
        if num==0{
            
        }
    }
}

