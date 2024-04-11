//
//  TodoListApp.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tasks: Task())
        }
        #warning("STEP 2: import SwiftData & add .modelContainer for Task.self")
    }
}
