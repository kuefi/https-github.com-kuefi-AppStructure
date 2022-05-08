//
//  DataServices.swift
//  CoreDataTest
//
//  Created by Werner Küfner on 10.04.22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [CardJSON] {
        
        // Parse local json file

        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "card", ofType: "json")

        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [CardJSON]()
        }

        // Create a url object
        let url = URL(fileURLWithPath: pathString!)

        do {
            // Create a data object
            let data = try Data(contentsOf: url)

            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()

            do {

                let cardData = try decoder.decode([CardJSON].self, from: data)

                // Add the unique IDs
                for r in cardData {
                    r.id = UUID()
                }

                // Return the recipes
                return cardData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }

        return [CardJSON]()
    }
    
}

