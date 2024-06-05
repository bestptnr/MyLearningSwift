import UIKit

class Developer{
    var fullName: String?
    var jobTitle: String?
    var yearExp : Int?
    
    init(){}
    
    init(fullName:String, jobTitle:String,yearExp:Int){
        self.fullName   = fullName
        self.jobTitle   = jobTitle
        self.yearExp    = yearExp
    }
    
    func showJobTitle(){
        print(jobTitle!)
    }
}

//var dev = Developer(fullName: "Phuthanet", jobTitle: "Mobile Developer", yearExp: 0)
//dev.showJobTitle()

class iOSDeveloper:Developer{
    var favFramework : String?
    
    func showFavFramework(){
        if let favFramework = favFramework{
                print(favFramework)
        }else{
                print("I don't have favorite framework!!!!")
        }
    }
    override func showJobTitle() {
        print("\(jobTitle!) -- \(fullName!)")
    }
}

let best = iOSDeveloper(fullName: "Phuthanet", jobTitle: "iOS Dev", yearExp: 6)
best.favFramework =  "React Native"
best.showFavFramework()
best.showJobTitle()
    
// Class : Reference Type ...
// Struct : Value Type ... เหมือนสร้าง Object ขึ้นมาใหม่


extension String {
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
    
}
let alphabet  = "A B C D E F"
print(alphabet.removeWhiteSpace())
