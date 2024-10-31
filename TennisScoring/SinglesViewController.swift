import UIKit

class SinglesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func enterAction(_ sender: UIButton) {
        performSegue(withIdentifier: "singlesSegue", sender: self)
    }
    
    
}
