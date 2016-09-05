import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("In ViewController - viewDidLoad")
    }
    override func viewWillAppear(animated: Bool) {
        //... your application is about to launch
    }
    override func viewDidAppear(animated: Bool) {
        //... your application is loaded
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

