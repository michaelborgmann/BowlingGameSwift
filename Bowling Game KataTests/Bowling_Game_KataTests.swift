//
//  Bowling_Game_KataTests.swift
//  Bowling Game KataTests
//
//  Created by Michael Borgmann on 29/06/16.
//  Copyright © 2016 Michael Borgmann. All rights reserved.
//

import XCTest
@testable import Bowling_Game_Kata

class Bowling_Game_KataTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameKnockingDownZeroPinsHasZeroPoints() {
        for _ in 1...20 {
            game.roll(pinsDown: 0)
        }
        XCTAssertEqual(game.score(), 0)
    }
    
    func testGameAlwaysWithOnePinKnockedDownHasTwentyPoints() {
        for _ in 1...20 {
            game.roll(pinsDown: 1)
        }
        XCTAssertEqual(game.score(), 20)
    }
 
    func testKnockDownAllPinsWithTwoThrowsInFrameIsSpareAndAddsPointsFromNextThrow() {
        game.roll(pinsDown: 6)
        game.roll(pinsDown: 4)
        game.roll(pinsDown: 5)
        game.roll(pinsDown: 4)
        XCTAssertEqual(game.score(), 24)
    }
    
    
    func testKnockDownAllPinsWithFirstThrowInFrameIsStrikeAndAddsPointsFromNextTwoThrows() {
        game.roll(pinsDown: 10)
        game.roll(pinsDown: 1)
        game.roll(pinsDown: 1)
        game.roll(pinsDown: 1)
        XCTAssertEqual(game.score(), 15)
    }
    
    func testFullGame() {
        // 1. frame (5)
        game.roll(pinsDown: 1)
        game.roll(pinsDown: 4)
        
        // 2. frame (14 = 5 + 9)
        game.roll(pinsDown: 4)
        game.roll(pinsDown: 5)
        
        // 3. frame (29 = 14 + 10 + 5)
        game.roll(pinsDown: 6)
        game.roll(pinsDown: 4)
        
        // 4. frame (49 = 29 + 10 + 10)
        game.roll(pinsDown: 5)
        game.roll(pinsDown: 5)
        
        // 5. frame (60 = 49 + 10 + 1)
        game.roll(pinsDown: 10)
        
        // 6. frame (61 = 60 + 1)
        game.roll(pinsDown: 0)
        game.roll(pinsDown: 1)
        
        // 7. frame (77 = 61 + 10 + 6)
        game.roll(pinsDown: 7)
        game.roll(pinsDown: 3)
        
        // 8. frame (97 = 77 + 10 + 10)
        game.roll(pinsDown: 6)
        game.roll(pinsDown: 4)
        
        // 9. frame (117 = 97 + 10 + 10)
        game.roll(pinsDown: 10)
        
        // 10. frame (133 = 117 + 10 + 6)
        game.roll(pinsDown: 2)
        game.roll(pinsDown: 8)
        game.roll(pinsDown: 6)
                
        XCTAssertEqual(game.score(), 133)
    }
}
