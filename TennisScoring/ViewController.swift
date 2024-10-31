import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func tappedCoverImageAction(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "openApp", sender: self)
    }
    
   
    
    
    
}
