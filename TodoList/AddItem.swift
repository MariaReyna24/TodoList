//
//  AddItem.swift
//  TodoList
//
//  Created by Maria Reyna on 4/9/24.
//

import SwiftUI

struct AddItem: View {
    @Environment(\.dismiss) var dismiss
    @Binding var item: String
    @ObservedObject var vm: Todo
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            VStack{
                TextField("Item", text: $item)
                    .textFieldStyle(.roundedBorder)
                Button("Add Item") {
                    vm.listOfTasks.append(item)
                    dismiss()
                    item = ""
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
    AddItem(item: .constant(""), vm: Todo())
}
