//
//  Card.swift
//  flipApp
//
//  Created by Нурдаулет on 07.03.2024.
//

import Foundation

struct Card {

    var isFaceUp =  false
    var isMatched = false
    var identifier: Int
    
     static var indentifierNumber = 0

    static func indentifierGenerator() -> Int {
        indentifierNumber += 1
        return indentifierNumber
    }

    init() {
        self.identifier = Card.indentifierGenerator()
    }
}
