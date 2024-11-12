import Foundation
class theOpps{
    var name : String
    
    init(name: String) {
        self.name = name
       
    }

    init() {
        name = "John Doe"
    }
    
    func getName()->String{
        return name
    }
    

}
