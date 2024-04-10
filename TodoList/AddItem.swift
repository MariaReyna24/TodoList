//
//  AddItem.swift
//  TodoList
//
//  Created by Maria Reyna on 4/9/24.
//

import SwiftUI

struct AddItem: View {
    @Environment(\.dismiss) var dismiss
//#warning("Add an @Bindable variable called task of type Task")
    @Bindable var task: Task
    @State var newTask = ""
//#warning("Add an @State variable called newTask of an empty string")
//#warning("Add an @Enviroment variable for the modelContext to access container")
    @Environment(\.modelContext) var modelContext
   // @ObservedObject var vm: Task
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            VStack{
                TextField("Add Task", text: $newTask)
                    .textFieldStyle(.roundedBorder)
               // #warning("change the append method to a modelcontext insert")
                Button("Add Task") {
                    modelContext.insert(Task(name: newTask))
                    dismiss()
                    newTask = ""
                }
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .cornerRadius(50)
            }
        }
    }
}

#Preview {
    AddItem(task: Task())
}
