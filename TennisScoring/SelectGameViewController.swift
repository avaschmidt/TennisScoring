import UIKit

class SelectGameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var textViewOutlet: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    //var defaults = UserDefaults.standard
   
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        tableViewOutlet.reloadData()
       // var score = defaults.string(forKey: "score")
       // var name = defaults.string(forKey: "name")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    

    @IBAction func enterAction(_ sender: UIButton) {
        
        if textViewOutlet.text != ""{
            text = textViewOutlet.text!
            AppData.text = text
        }
        else{
            text = "Match #\(AppData.numGamesSaved + 1)"
            AppData.text = text
        }
        AppData.numGamesSaved = AppData.numGamesSaved + 1
        tableViewOutlet.reloadData()
        var nameSave = AppData.text
        var scoreSave = AppData.score
       // defaults.set(scoreSave, forKey: "score")
        //defaults.set(nameSave, forKey: "name")
        
        performSegue(withIdentifier: "selectMatchSegue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.numGamesSaved
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = "Game: \(AppData.text)"
        cell?.detailTextLabel?.text = "Score: \(AppData.userSets)-\(AppData.oppSets)"
        return cell!
    }
    
    

}
