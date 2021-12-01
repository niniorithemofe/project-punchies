//
//  place.swift
//  homepage with nav
//
//  Created by Nini Ola on 11/11/21.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    
    var id = UUID().uuidString
    var placemark: CLPlacemark
}
