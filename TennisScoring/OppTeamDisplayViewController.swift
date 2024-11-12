import UIKit

class OppTeamDisplayViewController: UIViewController {

    @IBOutlet weak var displayOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayOutlet.text = "Names:"

        for opp in AppData.oppArray{
            displayOutlet.text += "\n \(opp)"
        }
        
    }
    

    

}
