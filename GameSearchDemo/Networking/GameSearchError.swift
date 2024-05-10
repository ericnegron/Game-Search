//
//  GameSearchError.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import Foundation


enum AuthError: Error {
    case missingToken
    case missingClientId
    case missingClientSecret
}

enum SearchError: Error {
    case invalidResponse
    case noInternet
}

enum GameDetailError: Error {
    case invalidResponse
}
