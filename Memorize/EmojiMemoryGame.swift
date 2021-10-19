//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lucas Carvajal on 16.04.21.
//  Copyright © 2021 Lucas Carvajal. All rights reserved.
//

import Foundation

let themes = [halloweenTheme, sportsTheme, transportTheme, fruitTheme, facesTheme, animalsTheme, flagsTheme, foodTheme]

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    private static func createMemoryGame() -> MemoryGame<String> {
        let newTheme = themes[Int.random(in: 0...(themes.count - 1))]
        let emojis = newTheme.emojis
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 10...newTheme.emojis.count), color: newTheme.color, name: newTheme.name) { pairIndex in return emojis[pairIndex]}
    }
        
    //MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    var color: String {
        model.cardColor
    }
    
    var name: String {
        model.themeName
    }
    
    var score: Int {
        model.score
    }
    
    //MARK: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        let newTheme = themes[Int.random(in: 0...(themes.count - 1))]
        let emojis = newTheme.emojis
        model = MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 10...newTheme.emojis.count), color: newTheme.color, name: newTheme.name) { pairIndex in return emojis[pairIndex]}
    }
    
}

