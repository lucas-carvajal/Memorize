//
//  Array+Only.swift
//  Memorize
//
//  Created by Lucas Carvajal on 25.04.21.
//  Copyright © 2021 Lucas Carvajal. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
