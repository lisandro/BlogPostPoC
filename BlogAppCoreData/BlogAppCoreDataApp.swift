//
//  BlogAppCoreDataApp.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 01/09/2020.
//

import SwiftUI

@main
struct BlogAppCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
