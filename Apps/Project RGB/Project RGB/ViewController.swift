//
//  ViewController.swift
//  Project RGB
//
//  Created by SDC-USER on 04/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    var red: CGFloat = 0
    var blue: CGFloat = 0
    var green: CGFloat = 0
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        
    }
    
    func styleSlider(_ slider: UISlider, thumbColor: UIColor, trackColor: UIColor) {
        slider.minimumTrackTintColor = trackColor
        slider.maximumTrackTintColor = .systemGray5
        slider.thumbTintColor = .white

        // Rounded track look
        slider.setThumbImage(UIImage(systemName: "circle.fill"), for: .normal)

        // Subtle shadow for floating feel
        slider.layer.cornerRadius = 10
        slider.layer.masksToBounds = false
        slider.layer.shadowColor = UIColor.black.cgColor
        slider.layer.shadowOpacity = 0.15
        slider.layer.shadowOffset = CGSize(width: 0, height: 2)
        slider.layer.shadowRadius = 4

        // Optional: make slider a bit thicker
        slider.transform = CGAffineTransform(scaleX: 1, y: 1.5)
    }


    @IBAction func sliderValueChange(_ sender: UISlider) {
        red = CGFloat(redSlider.value)
        blue = CGFloat(blueSlider.value)
        green = CGFloat(greenSlider.value)

        // Smooth background animation
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut]) {
            self.view.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
        }
    }
    
    @IBAction func redSwitch(_ sender: Any) {
        redSlider.isEnabled = (sender as AnyObject).isOn
        sliderFeedback(redSlider)
    }
    
    @IBAction func blueSwitch(_ sender: Any) {
        blueSlider.isEnabled = (sender as AnyObject).isOn
        sliderFeedback(blueSlider)
    }
    
    @IBAction func greenSwitch(_ sender: Any) {
        greenSlider.isEnabled = (sender as AnyObject).isOn
        sliderFeedback(greenSlider)
    }
    
    func sliderFeedback(_ slider: UISlider) {
        UIView.animate(withDuration: 0.2) {
            slider.alpha = slider.isEnabled ? 1.0 : 0.4
            slider.transform = slider.isEnabled ? .identity : CGAffineTransform(scaleX: 0.95, y: 0.95)
        }
    }
}
