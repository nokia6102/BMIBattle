//
//  Login1ViewController.swift
//  BＭIBattle
//
//  Created by Leon Cheng on 2019/5/26.
//  Copyright © 2019年 user. All rights reserved.
//

import UIKit

class Login2ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtLastName.setUnderLine()
        txtName.setUnderLine()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


