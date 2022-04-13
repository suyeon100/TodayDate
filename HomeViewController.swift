//
//  HomeViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/05.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    @IBOutlet weak var tableView: UITableView!
    
    var user:[String] = ["nana_b", "developer", "suzan", "hoya", "love_ing_", "jully", "jisuss","biggg"]
    var content: [String] = [
        "안녕하세요 ! 이번 주말에 성수 놀러가는데 \n 추천해주실 맛집, 카페 있나요??? ",
        "카공하기 좋은 조용하고 넓은 카페를 찾고있습니다. 홍대역에 추천할만한 카페가 있을까요 !",
        "친구들과 한강가기로 했는데 추천할만한 곳이 있나요?",
        "국내 여행가기 좋은 장소 추천해주세요 !",
        "요즘 핫한 장소가 어디에요??",
        "어른들과 함께가기 좋은 맛집이 어디인가요?",
        "아이와 함께 갈 수 있는 맛집, 카페 추천해주세요 ~~~",
        "서울에 애완동물과 함께 갈 수 있는 카페가 있나요?"
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
        
       // self.title = "Date"
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


