import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    var sum = 0
    
    func countIncrease() {
        sum = sum + 2
        labelResult.text = String(sum)
    }
    
    func countDecrese() {
        sum = sum - 1
        labelResult.text = String(sum)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.countDecrese), name: UIApplicationDidEnterBackgroundNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.countIncrease), name: UIApplicationWillEnterForegroundNotification, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

