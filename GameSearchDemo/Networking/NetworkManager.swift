//
//  NetworkManager.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import Foundation



class NetworkManager {
    
    static let shared = NetworkManager()
    
    private var apiKey: String {
        guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
            fatalError("Unable to retrieve API_KEY")
        }
        return "?key=\(apiKey)"
    }
    
    private init() {}
    
    struct Constants {
        static let baseUrl = "https://api.rawg.io/api/"
        
        // Individual endpoints
        static let search = "games"
        static let game = "games/"
        static let screenShots = "screenshots"
        static let movies = "movies"
    }
    
    
    // MARK: - Requests
    // Search
    func searchForGame(_ game: String) async throws -> [GameDetail] {

                
        let queryString = "\(apiKey)&search=\(game)&page_size=20"
        let urlString = Constants.baseUrl + Constants.search + queryString
        print(urlString)

        async let (data, response) =  try await URLSession.shared.data(from: URL(string: urlString)!)
        
        
        // Check for valid response
        guard let response = try await response as? HTTPURLResponse, response.statusCode == 200 else {
            throw SearchError.invalidResponse
        }
        
        // Decode JSON
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let results = try await decoder.decode(SearchResult.self, from: data)
        
        return results.results
    }
    
    // Game Details
    func getGameDetails(_ gameID: Int) async throws -> GameDetail {
        
        let urlString = Constants.baseUrl + Constants.game + "\(gameID)" + apiKey
        
        async let (data, response) = URLSession.shared.data(from: URL(string: urlString)!)
        
        // Check for valid response
        guard let response = try await response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GameDetailError.invalidResponse
        }
        
        // Decode JSON
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let results = try await decoder.decode(GameDetail.self, from: data)
        
        return results
        
    }

    func getGameScreenShots(_ gameID: Int) async throws -> [ScreenShot] {
        let urlString = Constants.baseUrl + Constants.game + "\(gameID)/" + Constants.screenShots + apiKey
        
        
        async let (data, response) = URLSession.shared.data(from: URL(string: urlString)!)
        
        // Check for valid response
        guard let response = try await response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GameDetailError.invalidResponse
        }
        
        // Decode JSON
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let results = try await decoder.decode(ScreenShotsResponse.self, from: data)
        
        return results.results
    }
    
}
