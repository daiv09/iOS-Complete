//
//  ViewController.swift
//  Light
//
//  Created by SDC-USER on 07/08/25.
//

import UIKit

class ViewController: UIViewController {
    var lightOn=true

    
    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    func updateUI() {
        if lightOn{
            view.backgroundColor=UIColor.black
            
        }else{
            view.backgroundColor=UIColor.white
            
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    
}

