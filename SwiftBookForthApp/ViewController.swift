//
//  ViewController.swift
//  SwiftBookForthApp
//
//  Created by Миша Москвичев on 28.10.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLable: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderchanged(_ sender: UISlider) {
        let temperaturCelsius = Int(round(slider.value))
        celiusLabel.text = "\(temperaturCelsius)ºC"
        
        let fahrenheitTempetature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLable.text = "\(fahrenheitTempetature)ºF"
        
    }
    
}

