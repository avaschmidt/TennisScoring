import UIKit

class WinnerViewController: UIViewController {

    @IBOutlet weak var winnerNameOutlet: UILabel!
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        if AppData.oppSets > AppData.userSets{
            winnerNameOutlet.text = "Name: \(AppData.opps)"
        }
        else if AppData.userSets > AppData.oppSets{
            winnerNameOutlet.text = "You!"
        }
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        var gameName = defaults.integer(forKey: "gameName")
        var n = defaults.string(forKey: "name")
    }
    
    
    
    
    

}
