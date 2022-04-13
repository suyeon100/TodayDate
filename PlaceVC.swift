//
//  Place.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/13.
//

import Foundation
import UIKit

class PlaceVC: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var placeCollection: UICollectionView!
    
    
    let image: [UIImage] = [
    

    UIImage(named: "img9")!,
    UIImage(named: "img10")!,
    UIImage(named: "img11")!
    
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placeCollection.dataSource = self
        placeCollection.delegate = self
    }
    }
extension PlaceVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlaceCell", for: indexPath) as! PlaceCell
        
        cell.imgVc.image = image[indexPath.row]

        return cell
    }
    
}


