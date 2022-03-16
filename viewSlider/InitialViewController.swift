import UIKit

class InitialViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainVC = segue.destination as! ViewController
        mainVC.mainViewColor = view.backgroundColor!
        mainVC.delegate = self
        
    }
    
    // MARK: undwindSegue
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        print("")
    }
    
}

extension InitialViewController: saveColorViewControllerDelegate {
    func saveColor(backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
    }
}
