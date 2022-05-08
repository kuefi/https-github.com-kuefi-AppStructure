//
//  CardArray.swift
//  MemoryLayout
//
//  Created by Werner Küfner on 20.02.22.
//

import SwiftUI

struct CardArray {
  
  var cardArray = [CardButton]()
  mutating func generateArray() -> [CardButton] {
    let button = CardButton()
    for _ in 0...32 {
      cardArray.append(button)
    }
    return cardArray
  }
  
}
