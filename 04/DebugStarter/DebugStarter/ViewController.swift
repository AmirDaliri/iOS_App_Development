import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func performCalculation(sender: AnyObject) {
        
        var firstVal = calculateFirstValue()
        var secondVal = calculateSecondValue()
        
        resultLabel.text = "The result is \(firstVal / secondVal)"
        
    }
    
    
    // calculation methods
    
    func calculateFirstValue() -> Int {
        return 10000    }
    
    func calculateSecondValue() -> Int {
        
        // this code is intentionally pointless!
        
        var importantNum = calculateFirstValue()
        var unimportantNum = 0

        for i in 1...5000 {
            // subtract 1 every time
            importantNum--
        }
        // make sure to return the right one!
        return importantNum
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

