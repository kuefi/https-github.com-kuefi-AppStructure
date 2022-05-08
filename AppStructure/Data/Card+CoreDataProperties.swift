//
//  Card+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by Werner Küfner on 10.04.22.
//
//

import Foundation
import CoreData


extension Card {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Card> {
        return NSFetchRequest<Card>(entityName: "Card")
    }

    @NSManaged public var oldImage: Data?
    @NSManaged public var newImage: Data?
    @NSManaged public var isPickerShowing: Bool
    @NSManaged public var isMatched: Bool
    @NSManaged public var isFlipped: Bool
    @NSManaged public var id: UUID?

}

extension Card : Identifiable {

}
