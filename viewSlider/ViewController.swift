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
        
        alphaSlider.value = 1
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1
        
        redColorValue.text = String(Int(redSlider.value))
        greenColorValue.text = String(Int(greenSlider.value))
        blueColorValue.text = String(Int(blueSlider.value))
        alphaValue.text = String(alphaSlider.value)
        
    }
        
    
    @IBAction func redSliderAction() {
        redColorValue.text = String(Int(redSlider.value))
        redSlider.value = redSlider.value
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func greenSliderAction() {
        greenColorValue.text = String(Int(greenSlider.value))
        greenSlider.value = greenSlider.value
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    
    
    @IBAction func blueSliderAction() {
        blueColorValue.text = String(Int(blueSlider.value))
        blueSlider.value = blueSlider.value
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func alphaSliderAction() {
        alphaValue.text = String(alphaSlider.value)
        alphaSlider.value = alphaSlider.value
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    
//        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))

    
}

