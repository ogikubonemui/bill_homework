
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func didClickButton(_ sender: UIButton) {

        let inputValue = textField.text
        performSegue(withIdentifier: "toNext", sender: inputValue)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextVC = segue.destination as! NextViewController
            nextVC.value = sender as! String
        }
    }
    

}

