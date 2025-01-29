import UIKit

class TypeSelectViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
    var options = ["Singles","Doubles"]
    @IBOutlet weak var picker: UIPickerView!
    var index = 0
    var choice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if options[row] == "Singles"{
            choice = "Singles"
        }
        else if options[row] == "Doubles"{
            choice = "Doubles"
        }
        else{
            print("Something went wrong")
        }
        
        
    }
    
    
    @IBAction func selectAction(_ sender: UIButton) {
        if choice == "Singles"{
            performSegue(withIdentifier: "singlesSegue", sender: nil)
        }
        else if choice == "Doubles"{
            performSegue(withIdentifier: "doublesSegue", sender: nil)
        }
        else{
            print("Error")
        }
    }
    

}
