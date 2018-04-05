//
//  MonGeocoder.swift
//  Les monuments français
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit
import CoreLocation

typealias AdresseCompletion = (_ adresse: String?, _ erreur: String?) -> (Void)


class MonGeocoder {
    
    static let obtenir = MonGeocoder()
    
    func adresseDepuis(_ location: CLLocation, completion: AdresseCompletion?) {
        let codeur = CLGeocoder()
        codeur.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) in
            if let erreur = error {
                completion?(nil, erreur.localizedDescription)
            } else if let array = placemarks, array.count > 0 {
                let monPostionnement = array.last
                let numero = monPostionnement?.subThoroughfare ?? ""
                let rue = monPostionnement?.thoroughfare ?? ""
                let ville = monPostionnement?.locality ?? ""
                let adresse = numero + " " + rue + ", " + ville
                completion?(adresse, nil)
            } else {
                completion?(nil, "Une erreur est survenue")
            }

        })
    }
    
}
