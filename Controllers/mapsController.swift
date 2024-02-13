//
//  mapsController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-19.
//

import Foundation
import UIKit
import GoogleMaps

class mapsController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyC1ITiALe63U9f3GmNxvoDvnya_bejqoZg")
        
        let camera = GMSCameraPosition.camera(withLatitude: 49.27038527651438, longitude: -123.06938626024849, zoom: 18)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.mapType = .normal
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 49.27038527651438, longitude: -123.06938626024849)
        marker.title = "Little Greece"
        marker.map = mapView
        
        self.view = mapView
        
    }
}
