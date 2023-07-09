//
//  hackingApp.swift
//  hacking
//
//  Created by hsaidi on 10/06/2023.
//

import SwiftUI

@main
struct hackingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coordinator: ContactsHelpCoordinator(routes: [.root(.numberList)]))
        }
    }
}
