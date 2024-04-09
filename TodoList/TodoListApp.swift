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
            ContentView(vm: Todo())
        }.modelContainer(for: Todo.self)
    }
}
