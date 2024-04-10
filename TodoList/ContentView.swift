//
//  ContentView.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import SwiftUI

struct ContentView: View {
   // #warning("STEP 3: add '@Environment('\'.modelContext') variable")
   // #warning("STEP 4: add @Query variable of type [Task]")
    @State var text = ""
    @State var isSheetShowing = false
    @ObservedObject var tasks: Task
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks.listofTasks, id: \.self) { task in
                    Text(task)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        isSheetShowing.toggle()
                    }
                    .sheet(isPresented: $isSheetShowing) {
                        AddItem(task: $text, vm: tasks)
                    }
                }
            }.navigationTitle("Todo List")
        }
    }
}

#Preview {
    ContentView(tasks: Task())
}

