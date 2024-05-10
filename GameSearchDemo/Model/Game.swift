//
//  Game.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import Foundation


struct GameDetail: Identifiable, Decodable {
    let id: Int
    let name: String?
    let descriptionRaw: String?
    let metacritic: Int?
    let released: String?
//    let tba: Bool?
    let backgroundImage: String?
//    let backgroundImageAdditional: String?
    let website: String?
    let screenshotsCount: Int?
    let moviesCount: Int?
//    let redditUrl: String?
//    let redditDescription: String?
//    let redditLogo: String?
//    let redditCount: Int?
//    let youtubeCount: Int?
//    let clip: String?
    let parentPlatforms: [Platforms]?
    let paltforms: [Platforms]?
//    let stores: [Stores]?
//    let developers: [Developer]?
    let genres: [Genre]?
    let publishers: [Publisher]?
    let esrbRating: ESRBRating?
    var screenShots: [ScreenShot]?
}


struct Genre: Identifiable, Decodable {
    let id: Int
    let name: String?
//    let gamesCount: String?
//    let imageBackground: String?
}

struct ESRBRating: Identifiable, Decodable {
    let id: Int
    let name: String?
}
