import UIKit

class SinglesViewController: UIViewController {

    @IBOutlet weak var oppNameOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func enterAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "singlesSegue", sender: self)
    }
    
    
}
