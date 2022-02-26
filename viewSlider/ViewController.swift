//
//  ViewController.swift
//  viewSlider
//
//  Created by Артём Дмитриев on 26.02.2022.
//

import UIKit

class ViewController: UIViewController {
        
    // MARK: Outlets for value labels and main view
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    @IBOutlet var alphaValue: UILabel!
    
    // MARK: Outlets for sliders
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        alphaSlider.value = 0
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1
        
        redColorValue.text = String(Int(redSlider.value))
        greenColorValue.text = String(Int(greenSlider.value))
        blueColorValue.text = String(Int(blueSlider.value))
        alphaValue.text = String(Int(alphaSlider.value))
    }


}

