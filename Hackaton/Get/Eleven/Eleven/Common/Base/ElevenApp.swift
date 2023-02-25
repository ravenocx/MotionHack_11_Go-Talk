//
//  ElevenApp.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import SwiftUI

@main
struct ElevenApp: App {
    // Call CoreData singleton
    let presistanceController = PresitanceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, presistanceController.container.viewContext)
        }
    }
}
