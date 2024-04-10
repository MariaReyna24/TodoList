//
//  TodoListApp.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import SwiftUI
import SwiftData
@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: Task.self)
       // #warning("STEP 2: import SwiftData and add .modelContainer for Todo.self")
    }
}
