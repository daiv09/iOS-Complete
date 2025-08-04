//
//  ViewController.swift
//  Project Greetings
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetText: UILabel!
    @IBOutlet weak var salutationSelection: UISegmentedControl!
    @IBOutlet weak var colorSelection: UISegmentedControl!
    @IBOutlet weak var nameInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sizeController(_ sender: UISlider) {
        var  size=CGFloat(sender.value)
        greetText.font=UIFont.systemFont(ofSize: size)
    }
    @IBAction func greetControl(_ sender: Any) {
      
        let gender=salutationSelection.selectedSegmentIndex==0 ? "Mr." : "Ms."
        let greetName=nameInput.text ?? "World"
        greetText.text="\(gender) \(greetName)"
        if colorSelection.selectedSegmentIndex==0{
            greetText.textColor = .red
        } else if colorSelection.selectedSegmentIndex==1{
            greetText.textColor = .green
        }else if colorSelection.selectedSegmentIndex==2{
            greetText.textColor = .blue
        } else{
            greetText.textColor = .black        }
    }
    
    @IBAction func resetControl(_ sender: Any) {
        greetText.text=""
        nameInput.text=""
    }
}

