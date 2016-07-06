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
    var rolls = [Int]()
    var frameTotal = 0

    func roll(pinsDown: Int) {
        rolls.append(pinsDown)
        if pinsDown == 10 && rolls.count % 2 == 1 {
            rolls.append(0)
        }
    }
    
    func score() -> Int {
        for (index, points) in rolls.enumerated() {
            
            if index < 20 {
                totalScore += points
            }
            
            if index % 2 == 0 {
                frameTotal = points
                if frameTotal == 10 {
                    totalScore += rolls[index+2] + rolls[index+3]
                }
            } else {
                frameTotal += points
                if frameTotal == 10 && rolls[index-1] < 10 {
                    totalScore += rolls[index+1]
                }
            }
        }
        
        return totalScore
    }
    
}
