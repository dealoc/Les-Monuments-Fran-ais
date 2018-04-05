//
//  CarteController.swift
//  Les monuments français
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit
import MapKit

class CarteController: UIViewController {

    @IBOutlet weak var carte: MKMapView!
    @IBOutlet weak var maPositionBouton: UIButton!
    @IBOutlet weak var segment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func meLocaliser(_ sender: Any) {
    }
    
    @IBAction func segmentChoisi(_ sender: Any) {
    }
    
}
