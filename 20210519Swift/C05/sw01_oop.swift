import cocoa
import UIKit

class Customer: NSObject {
    var firstName = ""
    var lastName = ""
    var addressLine1 = ""
    var addressLine2 = ""
    var city = ""
    var state = ""
    var zip = ""
    var phoneNumber = ""
    var emailAddress = ""
    var favoriteGenre = ""

    func listPurchaseHistory()->[String]{
        return ["Purchase1", "Phachase2"]
    }
}

class HelloWorld {
    func logMessage() {
        let helloworld = "hello world"
        print(helloworld)
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func showName(sender: AnyObject) {
        nameLabel.text = "My Name is ZL"
    }

    override func viewDidLoad(){
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}