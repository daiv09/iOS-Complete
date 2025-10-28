//
//  ViewController.swift
//  Delegate Seque 2
//
//  Created by SDC-USER1 on 26/09/25.
//

import UIKit
protocol passData{
    func receiveData(data:String)
}
class ViewController: UIViewController {
    func recieveData(data: String) {
        myLabel.text = data
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

