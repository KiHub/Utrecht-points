//
//  LocationService.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 07.11.2022.
//

import Foundation
import MapKit

class LocationService {
    
    static let locations: [Location] = [
        Location(
            name: "Oude Gracht",
            coordinates: CLLocationCoordinate2D(latitude: 52.090389, longitude:  5.120352),
            description: "The 2-kilometre long ‘Oude Gracht’ (Old Canal) of Utrecht, with a lower level quay and warehouses, is unique in the Netherlands",
            imageNames: [
                "bridge",
                "bridge-1"
            ]
        ),
        Location(
            name: "Dom Tower",
            coordinates: CLLocationCoordinate2D(latitude: 52.090650465625274, longitude:  5.121268683551852),
            description: "The Dom is a 14th-century gothic church. Standing at a height of 112 metres, the Dom Tower is the iconic symbol of Utrecht and the tallest church spire in the Netherlands",
            imageNames: [
                "buurkerk"
            ]
        ),Location(
            name: "De Haar",
            coordinates: CLLocationCoordinate2D(latitude: 52.12143789017164, longitude: 4.986291379418023),
            description: "De Haar is the largest castle in the Netherlands featuring beautiful gardens and a truly stunning castle ",
            imageNames: [
                "chanal"
            ]
        ),Location(
            name: "Nijntje museum",
            coordinates: CLLocationCoordinate2D(latitude: 52.0915511381493, longitude: 5.119397129463381),
            description: "The Miffy Museum is a must-visit for fans of the popular children’s book character, Miffy (or Nijntje in Dutch)",
            imageNames: [
                "station"
            ]
        ),
        Location(
            name: "Railway Museum",
            coordinates: CLLocationCoordinate2D(latitude: 52.08795022898814, longitude: 5.13116158780254),
            description: "The Railway Museum is so much more than just a museum. It's a fascinating real-life station/ where you can learn about how trains changed the world",
            imageNames: [
                "station"
            ]
        ),
        Location(
            name: "Museum Speelklok",
            coordinates: CLLocationCoordinate2D(latitude: 52.09083219119475, longitude: 5.119553920808185),
            description: "Museum Speelklok will take you through the wonderful world of self-playing musical instruments, surprising its visitors every day with the cheerful tunes from all corners of the museum",
            imageNames: [
                "station"
            ]
        ),
        Location(
            name: "The Streetfood Club",
            coordinates: CLLocationCoordinate2D(latitude: 52.093001433747425, longitude: 5.1221023843980875),
            description: "Just perfect lunch spot",
            imageNames: [
                "station"
            ]
        ),
        Location(
            name: "Schröder House",
            coordinates: CLLocationCoordinate2D(latitude: 52.08531126069054, longitude: 5.147588230149044),
            description: "The Schroder House is the only building that was designed in complete accordance with the De Stijl style,  which was marked by primary colours and pure ideas",
            imageNames: [
                "station"
            ]
        ),
        
    ]
    
}

