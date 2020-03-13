import UIKit
class SquareController: UIViewController {

    @IBOutlet weak var Length: UITextField!
    @IBOutlet weak var Width: UITextField!
    @IBOutlet weak var Area: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        Length.text = "0.0"
        Width.text = "0.0"
        Area.text = "0.0"
    }
    
    @IBAction func calculate(sender: UIButton) {
        var rectangle = (length: 0.0, width: 0.0)
        
        rectangle.length = Double(Length.text!)!
        rectangle.width = Double(Width.text!)!

        let area = 2*(rectangle.length + rectangle.width)
        Area.text = String(area)
    }
    
}
