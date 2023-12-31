//
//  ViewController.swift
//  ColorMix
//
//  Created by Kristina Kostenko on 25.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        colorView.backgroundColor = .black
    //commented line above no need now, because we have updateColor function
        updateColor()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 25
        colorView.layer.borderColor = UIColor.black.cgColor
        updateControls()
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
//        if sender.isOn {
//            colorView.backgroundColor = .red
//        } else {
//            colorView.backgroundColor = .black
//        }
        
//commented lines above no need now, because we have updateColor function
        updateColor()
        updateControls()
    }
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!

    @IBOutlet weak var blueSwitch: UISwitch!
    
    func updateColor() {
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    if redSwitch.isOn {
        red = CGFloat(redSlider.value)
    }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
    if blueSwitch.isOn {
        blue = CGFloat(blueSlider.value)
    }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateColor()
        updateControls()
    }
}

