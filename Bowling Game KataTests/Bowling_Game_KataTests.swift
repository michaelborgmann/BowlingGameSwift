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
    
}
