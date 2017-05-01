//
//  DetailsViewController.swift
//  mapkitSwift3
//
//  Created by Dylan Weaver on 5/1/17.
//  Copyright © 2017 Dylan Weaver. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class DetailsViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var locationManager:CLLocationManager?
    
    var mapView:MKMapView?
    
    var currentLocation:CLLocation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.startUpdatingLocation() //Uses a lot of battery power!
        locationManager?.desiredAccuracy = kCLLocationAccuracyNearestTenMeters //might want to set to best for final
        
        locationManager?.requestWhenInUseAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.currentLocation = locations[0]
        
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
        print(error)
    }
    
    @IBAction func saveLocation(_ sender: AnyObject) {
        let titleString:String = titleTextField.text!
        let descriptionString:String = descriptionTextField.text!
        
        let mapPin:MapPin = MapPin(title: titleString, subtitle: descriptionString, coordinate: currentLocation!.coordinate)
        
        mapView?.addAnnotation(mapPin)
        locationManager?.stopUpdatingLocation()
        self.dismiss(animated: true, completion: nil)
    }
}
