//
//  Game.swift
//  Bullseye
//
//  Created by Berker Erdini on 6/10/21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(sliderValue - target)
    }
}
