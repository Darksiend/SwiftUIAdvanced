//
//  SwiftUIAdvancedApp.swift
//  SwiftUIAdvanced
//
//  Created by Anton Chesnokov on 11/11/2021.
//

import SwiftUI

@main
struct SwiftUIAdvancedApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
