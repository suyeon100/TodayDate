//
//  Food.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/13.
//

import Foundation
import UIKit

class FoodVC: UIViewController {
    
    
    @IBOutlet weak var foodLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func foodBtn(_ sender: Any) {
        
        guard let change = storyboard?.instantiateViewController(identifier: "CoffeeCollection") as? CoffeeCollection else {
            return
            
  }
       self.present(change, animated: true)
  }
        
    }
    

