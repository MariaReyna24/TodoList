//
//  ContentView.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import SwiftUI
import SwiftData
struct ContentView: View {
   // #warning("STEP 3: add '@Environment('\'.modelContext') variable")
    @Environment(\.modelContext) var modelContext
   // #warning("STEP 4: add @Query to be able to fetch the data in the container")
    @Query var tasks: [Task]
    @State var text = ""
    @State var isSheetShowing = false
   // @ObservedObject var tasks: Task
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    Text(task.name)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        isSheetShowing.toggle()
                    }
                    .sheet(isPresented: $isSheetShowing) {
                        AddItem(task: Task())
                    }
                }
            }.navigationTitle("Todo List")
        }
    }
}

#Preview {
    ContentView()
}

