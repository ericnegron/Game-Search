//
//  GameSearchDemoTests.swift
//  GameSearchDemoTests
//
//  Created by Eric Negron on 5/9/24.
//

import XCTest
@testable import GameSearchDemo

final class GameSearchDemoTests: XCTestCase {
    
    

    func testSearchJSONDecoderDecodesSearch() throws {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let searchResult = try decoder.decode(SearchResult.self, from: searchTestFeature)
        
        XCTAssertEqual(searchResult.count, 16)
    }

    func testGameDetailJSONDecoderDecodesGameDetails() throws {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let gameDetails = try decoder.decode(GameDetail.self, from: gameDetailTestFeature)
        
        XCTAssertEqual(gameDetails.id, 58779)
        XCTAssertEqual(gameDetails.name, "Starfield")
    }
    
    func testScreenShotsJSONDecoderDecodesScreenShots() throws {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let screenshots = try decoder.decode(ScreenShotsResponse.self, from: screenShotsTestData)
        
        XCTAssertEqual(screenshots.results[0].id, 2883043)
    }
    
    
    
}
