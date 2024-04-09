//
//  DataModel.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import Foundation
import SwiftData

@Model
class Todo: ObservableObject, Identifiable {
    var listOfTasks: [String]
    
    init(listOfTasks: [String] = ["Example 1"]) {
        self.listOfTasks = listOfTasks
    }
}
