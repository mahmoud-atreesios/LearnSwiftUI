//
//  MemorizeGame.swift
//  First
//
//  Created by Mahmoud Mohamed Atrees on 09/08/2024.
//

import Foundation

struct MemorizeGame<CardContent> {
    var cards: [Card]
    
    func chooseCard(card: Card){
        
    }
    
    struct Card{
        var isFaceUp: Bool
        var isMatches: Bool
        var content: CardContent
    }
    
}
