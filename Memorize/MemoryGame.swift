//
//  MemoryGame.swift
//  Memorize
//
//  Created by Lucas Carvajal on 16.04.21.
//  Copyright © 2021 Lucas Carvajal. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    var cardColor: String
    var themeName: String
    var score: Int
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {cards.indices.filter { cards[$0].isFaceUp }.only}
        set {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    
    mutating func choose(card: Card) {
        if let chosenIndex = cards.firstIndex(matching: card), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    score += 2
                } else {
                    if (cards[chosenIndex].seen == true) {score -= 1}
                    if (cards[potentialMatchIndex].seen == true) {score -= 1}
                }
                self.cards[chosenIndex].isFaceUp = true
                
                cards[chosenIndex].seen = true
                cards[potentialMatchIndex].seen = true
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    func getColor() -> String {
        return cardColor
    }
    
    func getName() -> String {
        return themeName
    }
    
    func getScore() -> Int {
        return score
    }
    
    
    
    init(numberOfPairsOfCards: Int, color: String, name: String, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        cardColor = color
        themeName = name
        score = 0
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false {
            didSet {
                if isFaceUp {
                    startUsingBonusTime()
                } else {
                    stopUsingBonusTime()
                }
            }
        }
        var isMatched: Bool = false {
            didSet {
                stopUsingBonusTime()
            }
        }
        var seen: Bool = false
        var content: CardContent
        var id: Int
        
        
        //MARK: - Bonus Time
        
        var bonusTimeLimit: TimeInterval = 6
        
        //how long this card has ever been face up
        private var faceUpTime: TimeInterval {
            if let lastFaceUp = lastFaceUpDate {
                return pastFaceUpTime + Date().timeIntervalSince(lastFaceUp)
            } else {
                return pastFaceUpTime
            }
        }
        
        //last time this card was turned face up (and is still face up)
        var lastFaceUpDate: Date?
        
        //accumulated time this card has been face up in the past
        var pastFaceUpTime: TimeInterval = 0
        
        //how much time left before the bonus opportunity runs out
        var bonusTimeRemaining: TimeInterval {
            max(0, bonusTimeLimit - faceUpTime)
        }
        
        //percentage of bonus time remaning
        var bonusRemaining: Double {
            (bonusTimeLimit > 0 && bonusTimeRemaining > 0) ? bonusTimeRemaining/bonusTimeLimit : 0
        }
        
        //whether the card was matched during the bonus time period
        var hasEarnedBonus: Bool {
            isMatched && bonusTimeRemaining > 0
        }
        
        //whether we are currently face up, unmatched and have not yet used up the bonus window
        var isConsumingBonusTime: Bool {
            isFaceUp && !isMatched && bonusTimeRemaining > 0
        }
        
        //called when card transitions to face up state
        private mutating func startUsingBonusTime() {
            if isConsumingBonusTime, lastFaceUpDate == nil {
                lastFaceUpDate = Date()
            }
        }
        
        //called when card goes back face down (or gets matched)
        private mutating func stopUsingBonusTime() {
            pastFaceUpTime = faceUpTime
            lastFaceUpDate = nil
        }
    }
}
