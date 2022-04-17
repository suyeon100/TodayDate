//
//  Coffee.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/13.
//

import Foundation
import UIKit

class CoffeeVC: UIViewController {
    
    @IBOutlet weak var coffeeLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func coffeeBtn(_ sender: Any) {
        
      guard let change = storyboard?.instantiateViewController(identifier: "CoffeeCollection") as? CoffeeCollection else {
          return
          
}
     self.present(change, animated: true)
}
    
 }

