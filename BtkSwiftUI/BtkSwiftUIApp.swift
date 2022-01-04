//
//  BtkSwiftUIApp.swift
//  BtkSwiftUI
//
//  Created by Ahmet Kaan UZMAN on 5.01.2022.
//

import SwiftUI

@main
struct BtkSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
