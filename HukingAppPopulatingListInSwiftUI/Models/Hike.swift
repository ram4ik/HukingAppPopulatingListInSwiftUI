//
//  Hike.swift
//  HukingAppPopulatingListInSwiftUI
//
//  Created by ramil on 01.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6),
            Hike(name: "Tom, Dick and Harry Mountain", imageURL: "tom", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageURL: "tam", miles: 5)
        ]
    }
}
