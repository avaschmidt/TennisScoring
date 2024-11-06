import UIKit

class SetsViewController: UIViewController {
    @IBOutlet weak var setsDisplayOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setsDisplayOutlet.text += "\n You: \(AppData.userSets) \t \(AppData.opps): \(AppData.oppSets)"
    
    }
    
    @IBAction func nextSetAction(_ sender: UIButton) {
        
        if AppData.userSets == 6 && AppData.oppSets == 5{
            setsDisplayOutlet.text += "\n Play Another Set: Win By 2!"
            performSegue(withIdentifier: "nextSetSegue", sender: self)
        }
        else if AppData.userSets == 5 && AppData.oppSets == 6{
            setsDisplayOutlet.text += "\n Play Another Set: Win By 2!"
            performSegue(withIdentifier: "nextSetSegue", sender: self)
        }
        else if AppData.userSets == 7 && AppData.oppSets == 5{
            performSegue(withIdentifier: "winnerSegue", sender: self)
        }
        else if AppData.userSets == 5 && AppData.oppSets == 7{
            performSegue(withIdentifier: "winnerSegue", sender: self)
        }
        else if AppData.userSets == 6 && AppData.oppSets == 6{
            setsDisplayOutlet.text += "\n Play Tie Break"
            performSegue(withIdentifier: "nextSetSegue", sender: self)
        }
        else if AppData.userSets == 6 && AppData.oppSets == 7{
            performSegue(withIdentifier: "winnerSegue", sender: self)
        }
        else if AppData.userSets == 6 && AppData.oppSets == 7{
            performSegue(withIdentifier: "winnerSegue", sender: self)
        }
        else if AppData.userSets == 6 && AppData.oppSets != 6{
            performSegue(withIdentifier: "winnerSegue", sender: self)
        }
        else if AppData.userSets != 6 && AppData.oppSets == 6{
            performSegue(withIdentifier: "winnerSegue", sender: self)
        }
        else{
            performSegue(withIdentifier: "nextSetSegue", sender: self)
        }
    }
    
  
}
