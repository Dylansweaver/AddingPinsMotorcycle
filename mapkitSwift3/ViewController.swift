//
//  ViewController.swift
//  mapkitSwift3
//
//  Created by Dylan Weaver on 4/30/17.
//  Copyright © 2017 Dylan Weaver. All rights reserved.
//

import UIKit
import MapKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
           

    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsViewController:DetailsViewController = segue.destination as! DetailsViewController
        
        detailsViewController.mapView = self.mapView
    }
}

