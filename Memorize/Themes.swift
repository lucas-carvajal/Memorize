//
//  Themes.swift
//  Memorize
//
//  Created by Lucas Carvajal on 01.05.21.
//  Copyright © 2021 Lucas Carvajal. All rights reserved.
//

import Foundation

let halloweenTheme = MemoryTheme(name: "Halloween", emojis: ["👻", "🕷","🎃", "🕸","💣", "🧙", "🧹", "🪦", "⚰️", "💉"], color: "orange")
let sportsTheme = MemoryTheme(name: "Sports", emojis: ["⚽️", "⛷", "🏄‍♂️", "🏊‍♀️", "🧗", "🚴‍♀️", "🥎", "🏀", "🤺", "🤾", "🏇", "🏋️‍♀️", "🏈", "🏂", "🏌️‍♂️", "🤼‍♂️", "🏓"], color: "green")
let transportTheme = MemoryTheme(name: "Transport", emojis: ["🚗", "🚌", "🛳", "🛸", "🛩", "🚇", "🚀", "🏎", "🚁", "🚠", "🛵", "⛵️", "🚂", "🛺"], color: "black")
let fruitTheme = MemoryTheme(name: "Fruits", emojis: ["🍎", "🍇", "🥑", "🥝", "🍑", "🍓", "🍋", "🥥", "🍍", "🫐", "🍌", "🥭"], color: "purple")
let facesTheme = MemoryTheme(name: "Faces", emojis: ["😇", "🤓", "🥺", "🥸", "😎", "🥳", "🤠", "🥴", "🥱", "🤨", "🤪", "😷", "🤢", "🤤", "🥶", "🙄", "🤥", "🤯"], color: "yellow")
let animalsTheme = MemoryTheme(name: "Animals", emojis: ["🐿", "🦙", "🦄", "🐈", "🐼", "🐨", "🐟", "🦁", "🐷", "🐭", "🦋", "🐙", "🐢", "🦆", "🐬", "🐳", "🐡", "🐍", "🐶", "🐮", "🦍", "🦓"], color: "blue")
let flagsTheme = MemoryTheme(name: "Flags", emojis: ["🇩🇪", "🇮🇹", "🇨🇭", "🇸🇬", "🇺🇸", "🇮🇱", "🇨🇴", "🇳🇱", "🇭🇰", "🇨🇦", "🇱🇰", "🇨🇳", "🇷🇺", "🇬🇧", "🇲🇽", "🇹🇼", "🇧🇷", "🇯🇵", "🇵🇹", "🇦🇷", "🇦🇺", "🇲🇦", "🇻🇳", "🇧🇴", "🇸🇪", "🇰🇷", "🇸🇪", "🇦🇲", "🇫🇷"], color: "pink")

let foodTheme = MemoryTheme(name: "Food", emojis: ["🍔", "🍕", "🥗", "🍟", "🍩", "🍣", "🍳", "🍆", "🥞", "🍜", "🎂", "🍪", "🍗", "🌮", "🥐", "🥩", "🍙", "🍯", "🥓", "🥪", "🍦"] , color: "red")


struct MemoryTheme {
    let name: String
    let emojis: Array<String>
    let color: String
    
    init(name: String, emojis: Array<String>, color: String) {
        self.name = name
        self.emojis = emojis
        self.color = color
    }
}
