//
//  UserViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/11.
//

import UIKit
import PagingKit

class UserViewController: UIViewController {

    
    // MARK: User
    
    @IBOutlet weak var imgInfo: UIImageView!
    @IBOutlet weak var Label: UILabel!
    
    // MARK: pagingKit
    var menuViewController: PagingMenuViewController!
    var contentViewController: PagingContentViewController!
    
    static var viewController: (UIColor) -> UIViewController = { (color) in
          let vc = UIViewController()
           vc.view.backgroundColor = color
           return vc
        
       }
       
   // var dataSource = [(menuTitle: "Place", vc: viewController(.white)), (menuTitle: "Coffee", vc: viewController(.brown)), (menuTitle: "Food", vc: viewController(.yellow))]

    var dataSource = [(menu: String, content: UIViewController)]() {
        didSet{
            menuViewController.reloadData()
            contentViewController.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
      // MARK: Nib파일 연결
        
    menuViewController.register(nib: UINib(nibName: "MenuCell", bundle: nil), forCellWithReuseIdentifier: "MenuCell")
    menuViewController.registerFocusView(nib: UINib(nibName: "FocusView", bundle: nil))
        
        menuViewController.cellAlignment = .center
        
        menuViewController.reloadData()
        contentViewController.reloadData()
        
        dataSource = makeDataSource()
        
    }
    
    // MARK: 뷰연결
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let vc = segue.destination as? PagingMenuViewController {
                menuViewController = vc
                menuViewController.dataSource = self
                menuViewController.delegate = self
            } else if let vc = segue.destination as? PagingContentViewController {
                contentViewController = vc
                contentViewController.dataSource = self
                contentViewController.delegate = self
               
            }
    }
    
    fileprivate func makeDataSource() -> [(menu: String, content: UIViewController)] {
        
        let myMenuArray = ["Place", "Coffee", "Food"]
        return myMenuArray.map {
            
            let title = $0
            
            switch title {
            case "Place":
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlaceVC") as! PlaceVC
                return (menu: title, content: vc)
            case "Coffee":
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CoffeeVC") as! CoffeeVC
                return (menu: title, content: vc)
            case "Food":
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FoodVC") as! FoodVC
                return (menu: title, content: vc)
            default:
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlaceVC") as! PlaceVC
                return (menu: title, content: vc)
            }
            
        }
        
    }
        
    }

// MARK: 메뉴 데이터소스, 델리겟
extension UserViewController: PagingMenuViewControllerDataSource {
    func numberOfItemsForMenuViewController(viewController: PagingMenuViewController) -> Int {
        return dataSource.count
    }
    
    func menuViewController(viewController: PagingMenuViewController, widthForItemAt index: Int) -> CGFloat {
        return 100
    }
    
    func menuViewController(viewController: PagingMenuViewController, cellForItemAt index: Int) -> PagingMenuViewCell {
        let cell = viewController.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: index) as! MenuCell
        cell.titleLabel.text = dataSource[index].menu
        return cell
    }
    
}

extension UserViewController: PagingMenuViewControllerDelegate {
    func menuViewController(viewController: PagingMenuViewController, didSelect page: Int, previousPage: Int) {
        contentViewController.scroll(to: page, animated: true)
    }
}


// MARK: Content 데이터소스, 델리겟
extension UserViewController: PagingContentViewControllerDataSource {
    func numberOfItemsForContentViewController(viewController: PagingContentViewController) -> Int {
        return dataSource.count
    }
    
    func contentViewController(viewController: PagingContentViewController, viewControllerAt index: Int) -> UIViewController {
        return dataSource[index].content
    }
}

extension UserViewController: PagingContentViewControllerDelegate {
    func contentViewController(viewController: PagingContentViewController, didManualScrollOn index: Int, percent: CGFloat) {
        menuViewController.scroll(index: index, percent: percent, animated: false)
    }
}
