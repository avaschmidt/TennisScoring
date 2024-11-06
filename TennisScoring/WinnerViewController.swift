import UIKit

class WinnerViewController: UIViewController {

    @IBOutlet weak var winnerNameOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        if AppData.oppSets > AppData.userSets{
            winnerNameOutlet.text = "Name: \(AppData.opps)"
        }
        else if AppData.userSets > AppData.oppSets{
            winnerNameOutlet.text = "You!"
        }
        
        
        
    }
    
    

    

}
