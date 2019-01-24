//
//  BonusPointsInc.swift
//  MacPig
//
//  Created by Student on 1/24/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

class BonusPointsInc: PlayerProtocol {
    
    //let holdCap = 44
    
    
    func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool {
        
        var wantToRoll = false
        
        if turnScore < goal && turnScore < 25 && opponentTotal > currentTotal{
            wantToRoll = true
        }
        
        
        return wantToRoll
    }
}


extension BonusPointsInc: CustomStringConvertible {
    
    var description: String {
        return "BonusPointsInc"
    }
    
}
