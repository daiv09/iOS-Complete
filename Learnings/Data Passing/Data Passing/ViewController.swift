//
//  ViewController.swift
//  Data Passing
//
//  Created by SDC-USER1 on 03/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextFiel: UITextField!
    @IBOutlet weak var switchOutlet: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToRed(_ sender: Any) {
        if switchOutlet.isOn{
            performSegue(withIdentifier: "RedButton", sender: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
    }
    
    
    @IBAction func goToYellow(_ sender: Any) {
        if switchOutlet.isOn{
            performSegue(withIdentifier: "YellowButton", sender: nil)
        }
    }
}

