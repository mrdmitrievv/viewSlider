import UIKit

protocol saveColorViewControllerDelegate: AnyObject {
    func saveColor(backgroundColor: UIColor)
}

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
    
    // MARK: doneButton
    @IBOutlet var doneButton: UIButton!
    
    weak var delegate: saveColorViewControllerDelegate?
    
    var mainViewColor: UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        alphaSlider.minimumTrackTintColor = .black
        
        redColorValue.text = "n/a"
        greenColorValue.text = "n/a"
        blueColorValue.text = "n/a"
        alphaValue.text = "n/a"
        
        // MARK: Устанавлием фон view цветом первого экрана
        mainView.backgroundColor = mainViewColor
    }
    
    // MARK: Function that changes mainView background color
    func changeViewColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(alphaSlider.value))
        mainViewColor = mainView.backgroundColor!
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
    
    
    @IBAction func doneButtonPressed() {
        delegate?.saveColor(backgroundColor: mainViewColor)
    }
}

