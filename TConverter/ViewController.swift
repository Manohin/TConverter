//
//  ViewController.swift
//  TConverter
//
//  Created by Alexey Manokhin on 25.08.2022.

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        
        didSet {
            slider.value = 0
            slider.minimumValue = -100
            slider.maximumValue = 100
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let tempCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(tempCelsius) ºC"
        
        let tempFahrenheit = String(format: "%.01f", Double(tempCelsius) * 9 / 5 + 32)
        fahrenheitLabel.text = "\(tempFahrenheit) ºF"
    }
}

