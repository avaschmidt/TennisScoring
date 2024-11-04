import UIKit

class SetsViewController: UIViewController {
    @IBOutlet weak var setsDisplayOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setsDisplayOutlet.text += "\n You: \(AppData.userSets) \(AppData.opps): \(AppData.oppSets)"
    }
    
   
    
    
    
    
    
    
   // performSegue(withIdentifier identifier: "winnerSegue", sender: self)
  
}
