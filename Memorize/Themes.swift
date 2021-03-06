//
//  Themes.swift
//  Memorize
//
//  Created by Lucas Carvajal on 01.05.21.
//  Copyright ยฉ 2021 Lucas Carvajal. All rights reserved.
//

import Foundation

let halloweenTheme = MemoryTheme(name: "Halloween", emojis: ["๐ป", "๐ท","๐", "๐ธ","๐ฃ", "๐ง", "๐งน", "๐ชฆ", "โฐ๏ธ", "๐"], color: "orange")
let sportsTheme = MemoryTheme(name: "Sports", emojis: ["โฝ๏ธ", "โท", "๐โโ๏ธ", "๐โโ๏ธ", "๐ง", "๐ดโโ๏ธ", "๐ฅ", "๐", "๐คบ", "๐คพ", "๐", "๐๏ธโโ๏ธ", "๐", "๐", "๐๏ธโโ๏ธ", "๐คผโโ๏ธ", "๐"], color: "green")
let transportTheme = MemoryTheme(name: "Transport", emojis: ["๐", "๐", "๐ณ", "๐ธ", "๐ฉ", "๐", "๐", "๐", "๐", "๐ ", "๐ต", "โต๏ธ", "๐", "๐บ"], color: "black")
let fruitTheme = MemoryTheme(name: "Fruits", emojis: ["๐", "๐", "๐ฅ", "๐ฅ", "๐", "๐", "๐", "๐ฅฅ", "๐", "๐ซ", "๐", "๐ฅญ"], color: "purple")
let facesTheme = MemoryTheme(name: "Faces", emojis: ["๐", "๐ค", "๐ฅบ", "๐ฅธ", "๐", "๐ฅณ", "๐ค ", "๐ฅด", "๐ฅฑ", "๐คจ", "๐คช", "๐ท", "๐คข", "๐คค", "๐ฅถ", "๐", "๐คฅ", "๐คฏ"], color: "yellow")
let animalsTheme = MemoryTheme(name: "Animals", emojis: ["๐ฟ", "๐ฆ", "๐ฆ", "๐", "๐ผ", "๐จ", "๐", "๐ฆ", "๐ท", "๐ญ", "๐ฆ", "๐", "๐ข", "๐ฆ", "๐ฌ", "๐ณ", "๐ก", "๐", "๐ถ", "๐ฎ", "๐ฆ", "๐ฆ"], color: "blue")
let flagsTheme = MemoryTheme(name: "Flags", emojis: ["๐ฉ๐ช", "๐ฎ๐น", "๐จ๐ญ", "๐ธ๐ฌ", "๐บ๐ธ", "๐ฎ๐ฑ", "๐จ๐ด", "๐ณ๐ฑ", "๐ญ๐ฐ", "๐จ๐ฆ", "๐ฑ๐ฐ", "๐จ๐ณ", "๐ท๐บ", "๐ฌ๐ง", "๐ฒ๐ฝ", "๐น๐ผ", "๐ง๐ท", "๐ฏ๐ต", "๐ต๐น", "๐ฆ๐ท", "๐ฆ๐บ", "๐ฒ๐ฆ", "๐ป๐ณ", "๐ง๐ด", "๐ธ๐ช", "๐ฐ๐ท", "๐ธ๐ช", "๐ฆ๐ฒ", "๐ซ๐ท"], color: "pink")

let foodTheme = MemoryTheme(name: "Food", emojis: ["๐", "๐", "๐ฅ", "๐", "๐ฉ", "๐ฃ", "๐ณ", "๐", "๐ฅ", "๐", "๐", "๐ช", "๐", "๐ฎ", "๐ฅ", "๐ฅฉ", "๐", "๐ฏ", "๐ฅ", "๐ฅช", "๐ฆ"] , color: "red")


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
