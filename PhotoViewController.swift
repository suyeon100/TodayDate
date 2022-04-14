//
//  PhotoViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/11.
//

import UIKit



class PhotoViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let place: [String] = [
        "강남역 - 스크렘",
        "덕풍역 - 초이커피",
        "미사역 - 페어링하우스",
        "미사역 - 테임드커피",
        "덕풍역 - 데어베어무드",
        "동대문역 - 테프",
        "안국역 - Lake삼청",
        "미사역 - 인디비주얼",
        "제주도 - 별돈별",
        "불광역 - 이룸커피",
        "강남역 - 어퍼앤언더",

    ]

    let image: [UIImage] = [

    UIImage(named: "img2")!,
    UIImage(named: "img1")!,
    UIImage(named: "img4")!,
    UIImage(named: "img3")!,
    UIImage(named: "img")!,
    UIImage(named: "img6")!,
    UIImage(named: "img7")!,
    UIImage(named: "img8")!,
    UIImage(named: "img9")!,
    UIImage(named: "img10")!,
    UIImage(named: "img11")!


    ]
  

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()

        
        
        
    }
}
extension PhotoViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return place.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlaceCollectionViewCell", for: indexPath) as! PlaceCollectionViewCell
        
        cell.placeInfo.text = place[indexPath.row]
        cell.placeimage.image = image[indexPath.row]
        return cell
    }
    
}
extension PhotoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 150, height: 300)
    }
    
}
