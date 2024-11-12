import UIKit

class DoublesViewController: UIViewController {
    @IBOutlet weak var opp1Outlet: UITextField!
    @IBOutlet weak var opp2Outlet: UITextField!
    
    var enteredNames = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    
    @IBAction func enterAction(_ sender: UIButton) {
        AppData.opps = "\(opp1Outlet.text!) & \(opp2Outlet.text!)"
        enteredNames = true
        
    }
    
    
    @IBAction func viewDetailsAction(_ sender: UIButton) {
        
        
        if enteredNames == true{
            
            var opp1 = theOpps.init(name: opp1Outlet.text!)
           var opp2 = theOpps.init(name: opp2Outlet.text!)
            
            AppData.oppArray.append(opp1.getName())
            AppData.oppArray.append(opp2.getName())
            
            performSegue(withIdentifier: "teamSegue", sender: self)
            
        }
        
        
        
        else{
            print("No Names Entered")
        }
        
       
    }
    
    
    
    
    
    @IBAction func nextAction(_ sender: UIButton) {
        if enteredNames == true{
            performSegue(withIdentifier: "doublesSegue", sender: self)
        }
        else{
            print("No Names Entered")
        }
    }
    
}
