//
//  AddItem.swift
//  TodoList
//
//  Created by Maria Reyna on 4/9/24.
//

import SwiftUI

struct AddItem: View {
    @Environment(\.dismiss) var dismiss
    @Binding var task: String
//#warning("STEP 5:Add an @State variable called newTask and initlize an empty string")
//#warning("Step 6: Add an @Enviroment variable for the modelContext to access container")
    @ObservedObject var vm: Task
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            VStack{
                TextField("Add Task", text: $task)
                    .textFieldStyle(.roundedBorder)
               // #warning("change the append method to a modelcontext insert")
                Button("Add Task") {
                    vm.listofTasks.append(task)
                    dismiss()
                    task = ""
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
    AddItem(task: .constant(""), vm: Task())
}
