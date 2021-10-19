//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Lucas Carvajal on 22.04.21.
//  Copyright © 2021 Lucas Carvajal. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
