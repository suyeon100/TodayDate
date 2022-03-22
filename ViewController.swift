//
//  ViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/03/22.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var idText: UITextField!
    
    @IBOutlet weak var pwdText: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginBtn(_ sender: Any) {
        
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
         self.navigationController?.pushViewController(homeVC, animated: true)
        
        
        
    }
    
    
    @IBAction func joinBtn(_ sender: Any) {
        
        guard let modalVC = storyboard?.instantiateViewController(identifier: "JoinViewController") as? JoinViewController else {
            return
            
        }
        self.present(modalVC, animated: true)
    }
    
}

