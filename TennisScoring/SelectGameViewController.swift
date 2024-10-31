import UIKit

class SelectGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func enterAction(_ sender: UIButton) {
        performSegue(withIdentifier: "selectMatchSegue", sender: self)
    }
    

}
