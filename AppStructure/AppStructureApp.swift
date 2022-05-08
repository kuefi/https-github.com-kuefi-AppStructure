//
//  AppStructureApp.swift
//  AppStructure
//
//  Created by Werner Küfner on 27.04.22.
//

import SwiftUI

@main
struct AppStructureApp: App {
  
  let persistenceController = PersistenceController.shared
  
    var body: some Scene {
        WindowGroup {
            LaunchView()
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
            .environmentObject(CardModel())
        }
    }
}
