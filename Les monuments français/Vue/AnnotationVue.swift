//
//  AnnotationVue.swift
//  Les monuments français
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit
import MapKit

class AnnotationVue: MKAnnotationView {
    
    override var annotation: MKAnnotation? {
        willSet {
            guard let nouvelle = newValue as? MonAnnotation else { return }
            image = #imageLiteral(resourceName: "Group")
        }
    }
    
}
