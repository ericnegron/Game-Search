//
//  ScreenShots.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import Foundation

struct ScreenShotsResponse: Decodable {
    let results: [ScreenShot]
}

struct ScreenShot: Identifiable, Decodable {
    
    let id: Int
    let image: String?
    
}
