//
//  HomeViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/03/24.
//

// 1. FeedView 만들기 xib파일  + 사진
// 2. 추가 / 삭제 만들기

import UIKit


class HomeViewController: UIViewController {
   
    @IBOutlet weak var homeTable: UITableView!
    
    var feedArray: [String] = ["IMG_5123 2", "image", "image2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeTableCellNib = UINib(nibName: "HomeTableViewCell", bundle: nil)
            
        self.homeTable.register(homeTableCellNib, forCellReuseIdentifier: "homeTableCell")
        
        // Nib 셀크기
        self.homeTable.rowHeight = 300
        self.homeTable.estimatedRowHeight = 300
        
       homeTable.delegate = self
       homeTable.dataSource = self
        
    }
    
   
}

extension HomeViewController: UITableViewDelegate {
    
}
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.feedArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTable.dequeueReusableCell(withIdentifier: "homeTableCell", for: indexPath) as! HomeTableViewCell
        
        cell.bigImage.image = UIImage(named: feedArray[indexPath.row])
        
        return cell
    }
    

}
