//
//  Store.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import Foundation

struct Stores: Identifiable, Decodable {
    let id: Int
    let url: String?
    let store: Store?
}

struct Store: Identifiable, Decodable {
    let id: Int
    let name: String?
    let domain: String?
    let imageBackround: String?
    
}
