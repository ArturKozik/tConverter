//
//  ViewController.swift
//  TConverter
//
//  Created by Arthur Kozik on 24.07.2020.
//  Copyright © 2020 Arthur Kozik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = 0
    }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temparatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temparatureCelsius)ºC"
        let farenheitTemperature = Int(round((sender.value * 9/5) + 32))
        farenheitLabel.text = "\(farenheitTemperature)ºF"
    }





}
