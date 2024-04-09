//
//  DataModel.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import Foundation


class Todo: ObservableObject, Identifiable {
     @Published var item: String
     @Published var date: Date
    @Published var listOfTasks: [String]
    
    init(item: String = "", date: Date = Date.now, listOfTasks: [String] = ["Example 1"]) {
        self.item = item
        self.date = date
        self.listOfTasks = listOfTasks
    }
}
