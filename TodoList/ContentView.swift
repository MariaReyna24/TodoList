//
//  ContentView.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var isSheetShowing = false
    @ObservedObject var vm: Todo
    @Environment 
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.listOfTasks, id: \.self) { item in
                    Text(item)
                } .onDelete(perform: { indexSet in
                    vm.listOfTasks.remove(atOffsets: indexSet)
                })
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        isSheetShowing.toggle()
                    }
                    .sheet(isPresented: $isSheetShowing) {
                        AddItem(item: $text, vm: vm)
                    }
                }
            }.navigationTitle("Todo List")
        }
    }
}



