//
//  DataModel.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import Foundation
import SwiftData

//#warning("STEP 1: import SwiftData and add @Model to this class")
@Model
class Task {
    
    var name: String
    var date: Date
    var listofTasks: [String]
    
    init(name: String = "Example 1", date: Date = Date.now, listofTasks: [String] = ["Example 1", "Example 2"]) {
        self.name = name
        self.date = date
        self.listofTasks = listofTasks
    }
}
