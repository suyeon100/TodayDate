//
//  ViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/03/22.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    
    @IBOutlet weak var idText: UITextField!
    
    @IBOutlet weak var pwdText: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func loginBtn(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: idText.text!, password: pwdText.text!) { (user, error) in

                   if user != nil{

                       print("login success")

                   }

                   else{

                       print("login fail")

                   }
        
        
    }
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
         self.navigationController?.pushViewController(homeVC, animated: true)
        
}
    
    
    @IBAction func joinModal(_ sender: Any) {
        
        guard let modalVC = storyboard?.instantiateViewController(identifier: "JoinViewController") as? JoinViewController else {
                 return
                 
             }

        self.present(modalVC,animated: true)
    }
    
}
