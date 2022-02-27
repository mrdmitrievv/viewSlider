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
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        alphaSlider.thumbTintColor = .black
        
        redColorValue.text = "n/a"
        greenColorValue.text = "n/a"
        blueColorValue.text = "n/a"
        alphaValue.text = "n/a"
        
    }
    
    // MARK: Function that changes mainView background color
    func changeViewColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(alphaSlider.value))
    }
        
    // MARK: Actions on sliders that change label texts and mainView color
    @IBAction func redSliderAction() {
        redColorValue.text = String(Int(redSlider.value))
        changeViewColor()
    }
    
    @IBAction func greenSliderAction() {
        greenColorValue.text = String(Int(greenSlider.value))
        changeViewColor()
    }
    
    @IBAction func blueSliderAction() {
        blueColorValue.text = String(Int(blueSlider.value))
        changeViewColor()
    }
    
    @IBAction func alphaSliderAction() {
        alphaValue.text = String(alphaSlider.value)
        changeViewColor()
    }
}

