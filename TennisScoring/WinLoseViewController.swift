import UIKit

class WinLoseViewController: UIViewController {
    @IBOutlet weak var scoreDisplayOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreDisplayOutlet.text = "Love All"
        AppData.userWs = 0
        AppData.oppWs = 0
        
        
    }
    
    @IBAction func winAction(_ sender: UIButton) {
        if AppData.userSets == 6 && AppData.oppSets == 6{
            if AppData.userWs < 7{
                AppData.userWs += 1
            }
            else{
                AppData.userSets += 1
                performSegue(withIdentifier: "setSegue", sender: self)
            }
        }
        else if AppData.userWs == 40 && AppData.oppWs == 40{
            scoreDisplayOutlet.text += "\n Deuce"
            AppData.userSets += AppData.userSets + 1
            AppData.userWs = 0
            AppData.oppWs = 0
            performSegue(withIdentifier: "setSegue", sender: self)
        }
        else if AppData.userWs <= 40 && AppData.oppWs <= 40{
            if AppData.userWs == 0{
                AppData.userWs = 15
                scoreDisplayOutlet.text += "\n\(AppData.userWs)-\(AppData.oppWs)"
            }
            else if AppData.userWs == 15{
                AppData.userWs = 30
                scoreDisplayOutlet.text += "\n\(AppData.userWs)-\(AppData.oppWs)"
            }
            else if AppData.userWs == 30{
                AppData.userWs = 40
                scoreDisplayOutlet.text += "\n\(AppData.userWs)-\(AppData.oppWs)"
            }
            else if AppData.userWs == 40 && AppData.oppWs != 40{
                AppData.userSets += 1
                AppData.userWs = 0
                AppData.oppWs = 0
                performSegue(withIdentifier: "setSegue", sender: self)
            }
        }
        
    }
    
    @IBAction func loseAction(_ sender: UIButton) {
        if AppData.userSets == 6 && AppData.oppSets == 6{
            if AppData.oppWs < 7{
                AppData.oppWs += 1
            }
            else{
                AppData.oppSets += 1
                performSegue(withIdentifier: "setSegue", sender: self)
            }
        }
        else if AppData.userWs == 40 && AppData.oppWs == 40{
            scoreDisplayOutlet.text += "\n Deuce"
            AppData.oppSets = AppData.oppSets + 1
            AppData.oppWs = 0
            AppData.userWs = 0
            performSegue(withIdentifier: "setSegue", sender: self)
        }
       else if AppData.userWs <= 40 && AppData.oppWs <= 40{
            if AppData.oppWs == 0{
                AppData.oppWs = 15
                scoreDisplayOutlet.text += "\n\(AppData.userWs)-\(AppData.oppWs)"
            }
            else if AppData.oppWs == 15{
                AppData.oppWs = 30
                scoreDisplayOutlet.text += "\n\(AppData.userWs)-\(AppData.oppWs)"
            }
            else if AppData.oppWs == 30{
                AppData.oppWs = 40
                scoreDisplayOutlet.text += "\n\(AppData.userWs)-\(AppData.oppWs)"
            }
            else if AppData.oppWs == 40 && AppData.userWs != 40{
                AppData.oppSets += 1
                AppData.oppWs = 0
                AppData.userWs = 0
                performSegue(withIdentifier: "setSegue", sender: self)
            }
        }
    }
    
    
    
    
    
    
    
    

}
