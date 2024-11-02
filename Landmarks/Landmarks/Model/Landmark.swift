//
//  Landmark.swift
//  Landmarks
//
//  Created by Warner on 2024/8/9.
//
import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    var category: Category
    enum Category: String, CaseIterable, Codable{
        case Libraries = "Libraries"
        case Dorms = "Dorms"
        case Friends = "开发者和他的朋友们"
    }
    
    
    
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }


    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }


    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}


