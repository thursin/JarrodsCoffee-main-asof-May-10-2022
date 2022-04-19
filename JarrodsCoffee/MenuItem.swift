//
//  MenuItem.swift
//  JarrodsMenuRev
//
//  Created by Jason Carter on 4/4/22.
//

import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var size1: String
    var size2: String
    var price1: Double
    var price2: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case size1
        case size2
        case price1
        case price2
        case category
        case imageURL = "image_url"
    }
}

struct MenuItems: Codable {
    let items: [MenuItem]
}


