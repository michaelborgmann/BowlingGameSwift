//
//  Game.swift
//  Bowling Game Kata
//
//  Created by Michael Borgmann on 29/06/16.
//  Copyright © 2016 Michael Borgmann. All rights reserved.
//

import Foundation

class Game {
    
    var totalScore = 0
    var rolls = Array(repeating: 0, count: 21)
    var currentRoll = 0

    func roll(pinsDown: Int) {
        rolls.insert(pinsDown, at: currentRoll)
    }
    
    func score() -> Int {
        return rolls.reduce(0, combine: +)
    }
    
}
