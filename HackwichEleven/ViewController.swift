//
//  ViewController.swift
//  HackwichEleven
//
//  Created by madison hagio on 4/6/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restaurant(title: "kalapawai", type: "America", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098) )
        
//problem set one
        let restaurantTwo = Restaurant(title: "Big City Diner", type: "Waipahu", coordinate: CLLocationCoordinate2D(latitude: 21.412706, longitude: -157.99974) )
        
        mapView.addAnnotation(restaurantTwo)
        
        mapView.addAnnotation(restaurantOne)
    }

    
    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    

}

