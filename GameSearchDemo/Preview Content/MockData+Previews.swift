//
//  MockData+Previews.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import Foundation

@Observable
class MockData: ObservableObject {
    // Search Details
    var searchResults: SearchResult = load("searchData.json")
    
    // Game Details
    var gameDetails: GameDetail = load("gameDetail.json")
    
    // Game Media
    var screenShots: ScreenShotsResponse = load("screenShots.json")
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    } catch {
        
        debugPrint("Error parsing file with error: \(error)")
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error.localizedDescription)")
    }
}

