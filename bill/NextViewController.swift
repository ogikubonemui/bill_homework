import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var value = ""
    
    
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let valueInt = Int(value)!
        let month = valueInt * 12
        
        let bill = month / 5
        
        label.text = "あなたの年収は\(month)万円です"
        
        result.text = "\(bill)秒で稼ぎます。"
    }
    
}
