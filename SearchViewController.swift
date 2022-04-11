//
//  SearchViewController.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/06.
//

import UIKit
import MapKit
import CoreLocation

class Marker: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    let subtitle: String?
    
  init(
    title: String?,
    subtitle: String?,
    coordinate: CLLocationCoordinate2D
  ){
      self.title = title
      self.subtitle = subtitle
      self.coordinate = coordinate
      
      super.init()
  }
    
}

class SearchViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
 
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    let mark1 = Marker(
        title: "홍대", subtitle: "..", coordinate: CLLocationCoordinate2D(latitude: 37.55769, longitude: 126.92450 )
    )
    
    
    
  
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController

        self.mapView.delegate = self
        mapView.addAnnotation(mark1)
    }
  
}

