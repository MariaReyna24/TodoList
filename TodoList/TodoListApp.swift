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
       // #warning("STEP 2: add .modelContainer for Todo.self")
    }
}
