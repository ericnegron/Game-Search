//
//  Search.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import Foundation


struct SearchResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [GameDetail]
}








