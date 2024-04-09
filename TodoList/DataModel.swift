//
//  DataModel.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import Foundation

class Todo: ObservableObject, Identifiable {
   @Published var listOfTasks: [String]
    
    init(listOfTasks: [String] = ["Example 1"]) {
        self.listOfTasks = listOfTasks
    }
}
