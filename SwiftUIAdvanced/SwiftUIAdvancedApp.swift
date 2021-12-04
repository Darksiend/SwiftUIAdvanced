//
//  SwiftUIAdvancedApp.swift
//  SwiftUIAdvanced
//
//  Created by Anton Chesnokov on 11/11/2021.
//

import SwiftUI
import Firebase

@main
struct SwiftUIAdvancedApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            SignupView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
