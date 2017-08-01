//
//  ViewController.swift
//  CoreLocation
//
//  Created by Collin Cannavo on 8/1/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager!
    
    @IBOutlet weak var locationLabel: UILabel!
   
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
//        mapView.delegate = self
//        mapView.showsUserLocation = true
    
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) }
        if let locatio = locaitons.last {
            self.locationLabel.text = "Lat: \(location.coordinate.latitude), long: \(location.coordinate.longitude)"
    }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Location: NSObject, MKAnnotation {
    
    var latitude: Double
    var longitude: Double
    var name: String
    
    init(latitude: Double, longitude: Double, name: String) {
        self.latitude = latitude
        self.longitude = longitude
        self.name = name
    }
    
    var coordinate: CLLocationCoordinate2D {
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        return coordinate
    }
    
    var title: String? {
        return name
    }
    
}

