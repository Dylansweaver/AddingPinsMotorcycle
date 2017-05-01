//
//  MapPin.swift
//  mapkitSwift3
//
//  Created by Dylan Weaver on 5/1/17.
//  Copyright © 2017 Dylan Weaver. All rights reserved.
//

import MapKit

class MapPin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, subtitle:String, coordinate:CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
