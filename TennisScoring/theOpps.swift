import Foundation
class theOpps{
    var name : String
    var points : Int
    init(name: String, points: Int) {
        self.name = AppData.opps
        self.points = AppData.oppSets
    }

    init() {
        name = "John Doe"
        points = 0
    }
    
    func getName()->String{
        return name
    }
    

}
