//
//  ContentView.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data: Todo
    var body: some View {
        List {
            Text("Todo item #1")
            Text("Another one")
        }
    }
}

#Preview {
    ContentView(data: Todo(item: [""]))
}
