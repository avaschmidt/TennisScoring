import UIKit

class DoublesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    

    @IBAction func enterAction(_ sender: UIButton) {
        performSegue(withIdentifier: "doublesSegue", sender: self)
    }
    

}
