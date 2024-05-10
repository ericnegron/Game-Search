//
//  GameDetailViewModel.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import Foundation


@MainActor
@Observable class GameDetailViewModel {
    
    // Public Props
    var game: GameDetail
    var isLoading = false
    
    enum State {
        case na
        case loading
        case succcess(data: GameDetail)
        case failed(error: Error)
    }
    
    // Private props
    private(set) var state: State = .na
    var didError: Bool = false
    
    // Init
    init(game: GameDetail, isLoading: Bool = false) {
        self.game = game
        self.isLoading = isLoading
    }
    
    
    // MAR: - View Setup
    func formatReleaseYear() -> String {
        if let releasedDate = game.released {
            let year = releasedDate.prefix(4)
            return String(year)
        } else {
            return ""
        }
    }
    
    // MARK: - Networking
    func fetchGameDetail(_ gameId: Int) {
        state = .loading
        
        Task {
            do {
                game = try await NetworkManager.shared.getGameDetails(gameId)
                
                if let screenshotsCount = game.screenshotsCount {
                    if screenshotsCount > 0 {
                        game.screenShots = try await NetworkManager.shared.getGameScreenShots(gameId)
                    }
                }
                
                state = .succcess(data: game)
                
            } catch {
                state = .failed(error: error)
                didError = true
                
                debugPrint("Unable to get game details:  \(error)")
            }
        }
    }
    
    
}
