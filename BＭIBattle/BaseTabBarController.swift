import UIKit
class BaseTabBarController: UITabBarController {
    
    @IBInspectable var defaultIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = defaultIndex
    }
    
}
