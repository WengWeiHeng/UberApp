//
//  LocationHandler.swift
//  UberApp
//
//  Created by Heng on 2020/4/7.
//  Copyright © 2020 Heng. All rights reserved.
//

import CoreLocation

class LocationHandler: NSObject, CLLocationManagerDelegate{
    
    static let shared = LocationHandler()
    var locationManager: CLLocationManager!
    var location: CLLocation?
    
    override init() {
        super.init()
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse{
            locationManager.requestAlwaysAuthorization()
        }
    }
}
