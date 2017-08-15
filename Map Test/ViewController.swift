//
//  ViewController.swift
//  Map Test
//
//  Created by Mahmudur Rahman on 8/15/17.
//  Copyright © 2017 Code Mask. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var firstMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitude: CLLocationDegrees = 23.7424828
        let longitude: CLLocationDegrees = 90.3944231
        
        let latDelta: CLLocationDegrees = 0.15
        let longDelta: CLLocationDegrees = 0.15
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        firstMap.setRegion(region, animated: true)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

