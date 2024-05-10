//
//  SearchViewModel.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import Foundation
import SwiftUI


@MainActor
@Observable class SearchViewModel {
    
    // Public Props
    var games: [GameDetail]
    var isLoading = false
    

    enum State {
        case na
        case loading
        case succes(data: [GameDetail])
        case failed(error: Error)
    }

    // Private Props
    private(set) var state: State = .na
    var didError: Bool = false
    
    // Init
    init(games: [GameDetail] = []) {
        self.games = games
    }  
    
    
    // MARK: - View Config
    func ratingColor(_ rating: Int) -> Color {
        if rating >= 70 {
            return .green
        } else if rating >= 50 && rating < 70 {
            return .orange
        } else {
            return.red
        }
    }
    
    func getPlatformTypes(_ platforms: [Platforms]) -> [String] {
        return platforms.compactMap { platform in
            platform.platform.name
        }
    }
    
    func mapPlatformAbbreviation(_ abbreviation: String) -> Platform.PlatformType? {
        switch abbreviation {
        case "Xbox":
            return .Xbox
        case "Playstation":
            return .PlayStation
        case "PC":
            return .PC
        case "iOS":
            return .iOS
        case "Android":
            return .Android
        case "Apple Macintosh":
            return .Mac
        case "Linux":
            return .Linux
        case "Nintendo":
            return .Switch
        case "Atari":
            return .Atari
        case "Comodore / Amiga":
            return .Comodore
        case "SEGA":
            return .Sega
        case "3DO":
            return .ThreeDO
        case "Neo Geo":
            return .NeoGeo
        case "Web":
            return .Web
        case "STAD", "Google Stadia":
            return .Stadia
        case "Meta Quest":
            return .Meta
        default:
            return .Other
        }
    }
    
    
    // MARK: - Networking
    func fetchSearchResults(for game: String) {

        state = .loading
        
        Task {
            do {
                games = try await NetworkManager.shared.searchForGame(game)
                state = .succes(data: games)
                
            } catch {
                state = .failed(error: error)
                didError = true
                
                debugPrint("Failed to fetch search with error: \(error)")
            }
        }
    }
    
    
    

}
