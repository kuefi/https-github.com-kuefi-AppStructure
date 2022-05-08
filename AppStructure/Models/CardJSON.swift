//
//  CardJSON.swift
//  CoreDataTest
//
//  Created by Werner Küfner on 10.04.22.
//

import Foundation

class CardJSON: Identifiable, Decodable {
  var id: UUID?
  var oldImage: String
  var newImage: String
  var isMatched: Bool
  var isFlipped: Bool
  var isPickerShowing: Bool
}
