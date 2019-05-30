
import UIKit

private var pTouchAreaEdgeInsets: UIEdgeInsets = .zero

class myTabBarController: UITabBarController {
   //Xcode可視化變數defaultIndex
    @IBInspectable var defaultIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

         //設定預設的tabs index
         self.selectedIndex = defaultIndex
        
        if UIImage(named: "Icon_Tab3") != nil {
            self.addCenterButton(withImage: #imageLiteral(resourceName: "Icon_Tab3"), highlightImage: #imageLiteral(resourceName: "Icon_Tab3"))
        }
    

    }
    
    
    
    
    @objc func handleTouchTabbarCenter(sender : UIButton)
    {
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            self.selectedViewController = self.viewControllers?[Int(i)]
        }
    }
    
    func addCenterButton(withImage buttonImage : UIImage, highlightImage: UIImage) {
        
        let paddingBottom : CGFloat = 50.0
        
        let button = UIButton(type: .custom)
        button.autoresizingMask = [.flexibleRightMargin, .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin]
        button.frame = CGRect(x: 0.0, y: 0.0, width: buttonImage.size.width / 2.0, height: buttonImage.size.height / 2.0)
        button.setBackgroundImage(buttonImage, for: .normal)
        button.setBackgroundImage(highlightImage, for: .highlighted)
  
//        button.touchAreaEdgeInsets = UIEdgeInsets(top: -10 , left: -10 , bottom: -10, right: -10)
        
        let vrectBound = self.view.bounds
        let vxx = vrectBound.midX
        let vyy = self.view.bounds.size.height

        button.center = CGPoint(x: vxx, y: vyy - paddingBottom - 30)
        
                button.addTarget(self, action: #selector(handleTouchTabbarCenter), for: .touchUpInside)
                self.view.addSubview(button)
        self.view.bringSubviewToFront(button)
        

        
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            let item = self.tabBar.items![Int(i)]
            item.title = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
