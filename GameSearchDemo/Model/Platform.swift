//
//  Platform.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import Foundation


struct Platforms: Decodable {
    let platform: Platform
    let releasedAt: String?
    let requirements: PlatformRequirements?
}

struct Platform: Identifiable, Decodable {
    let id: Int
    let name: String?
    let imageBackground: String?
}

struct PlatformRequirements: Decodable {
    let minimum: String?
    let recommended: String?
}


extension Platform {
    enum PlatformType {
        case Mac
        case Xbox
        case PlayStation
        case PC
        case iOS
        case Android
        case Linux
        case Switch
        case Atari
        case Comodore
        case Sega
        case ThreeDO
        case NeoGeo
        case Web
        case Meta
        case Stadia
        case Other
    }
    
}
