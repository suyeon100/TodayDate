//
//  HomeViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/05.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    @IBOutlet weak var tableView: UITableView!
    
    var user:[String] = ["A", "B", "C", "D", "E"]
    var content: [String] = [
        "안녕하세요 ! ",
        "",
        "",
        "",
        ""
    ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath)
        as! HomeTableViewCell
        
        cell.tooLabel.text = user[indexPath.row]
        cell.contentLabel.text = content[indexPath.row]
        
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Date"
        self.makNavigationBar()
        
        tableView.delegate = self
        tableView.dataSource = self
      
       
    }
    
    func makNavigationBar() {
        
        let item = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addFeed))
        
        item.tintColor = .black
        
        navigationItem.rightBarButtonItem = item
        

    }
    
  @objc func addFeed() {
        
    }
}


