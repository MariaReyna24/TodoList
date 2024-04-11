//
//  DataModel.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import Foundation
//#warning("STEP 1: import SwiftData and add @Model to this class")
class Task: ObservableObject {
    
    @Published var name: String
    @Published var date: Date
    @Published var listofTasks: [String]
    
    init(name: String = "Example 1", date: Date = Date.now, listofTasks: [String] = ["Example 1", "Example 2"]) {
        self.name = name
        self.date = date
        self.listofTasks = listofTasks
    }
}
