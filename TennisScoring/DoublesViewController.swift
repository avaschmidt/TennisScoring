import UIKit

class DoublesViewController: UIViewController {
    @IBOutlet weak var opp1Outlet: UITextField!
    @IBOutlet weak var opp2Outlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    

    @IBAction func enterAction(_ sender: UIButton) {
        AppData.opps = "\(opp1Outlet.text!) & \(opp2Outlet.text!)"
        performSegue(withIdentifier: "doublesSegue", sender: self)
    }
    

}
