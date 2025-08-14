//
//  ViewController.swift
//  Project Stopwatch
//
//  Created by SDC-USER on 05/08/25.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer?
    var totalSec: Int = 0
    @IBOutlet weak var minLabel: UILabel!
    
    @IBOutlet weak var secLabel: UILabel!
    
    @IBOutlet weak var millisecLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startBtn(_ sender: UIButton) {
        if timer == nil {
            timer=Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    }
    @objc func updateTimer() {
        totalSec += 1
        let sec=totalSec/1000
        let min=sec/60
        minLabel.text=String(format: "%02d", min)
        secLabel.text=String(format: "%02d", sec%60)
        millisecLabel.text=String(format: "%03d", totalSec%1000)
    }
    @IBAction func stopBtn(_ sender: Any) {
        timer?.invalidate()
        timer=nil
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        totalSec=0
        minLabel.text = "00"
        secLabel.text = "00"
        millisecLabel.text = "00"
    }
    
}
