//
//  CardModel.swift
//  CoreDataTest
//
//  Created by Werner Küfner on 10.04.22.
//


import Foundation
import UIKit

class CardModel: ObservableObject {
    
    // Reference to the managed object context
    let managedObjectContext = PersistenceController.shared.container.viewContext
    
    @Published var cards = [Card]()
    
    init() {
        
        // Check if we have preloaded the data into core data
        checkLoadedData()
      }
    
    
    func checkLoadedData() {
        
        // Check local storage for the flag
        let status = UserDefaults.standard.bool(forKey: Constants.isDataPreloaded)
        
        // If it's false, then we should parse the local json and preload into Core Data
        if status == false {
            preloadLocalData()
        }
    }
    
    func preloadLocalData() {
        
        // Parse the local JSON file
        let localCards = DataService.getLocalData()
        
        // Create Core Data objects
        for r in localCards {
            
            // Create a core data object
            let card = Card(context: managedObjectContext)
            
            // Set its properties
          card.id = UUID()
          card.oldImage = UIImage(named: r.oldImage)?.jpegData(compressionQuality: 1.0)
          card.newImage = UIImage(named: r.newImage)?.jpegData(compressionQuality: 1.0)
          card.isPickerShowing = r.isPickerShowing
          card.isFlipped = r.isFlipped
          card.isMatched = r.isMatched
        }
        
        // Save into Core Data
        do {
            try managedObjectContext.save()
            
            // Set local storage flag
            UserDefaults.standard.setValue(true, forKey: Constants.isDataPreloaded)
        }
        catch {
            // Couldn't save to core data
          print("Fehler beim Abspeichern")
        }
    }
}
