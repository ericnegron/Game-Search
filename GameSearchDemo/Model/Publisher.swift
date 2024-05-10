//
//  Publisher.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import Foundation


struct Developer: Identifiable, Decodable {
    let id: Int
    let name: String?
    let imageBackground: String?
}

struct Publisher: Identifiable, Decodable {
    let id: Int
    let name: String?
    let gamesCount: Int?
    let imageBackground: String?
}
