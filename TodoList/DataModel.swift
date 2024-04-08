//
//  DataModel.swift
//  TodoList
//
//  Created by Maria Reyna on 4/8/24.
//

import Foundation

class Todo: ObservableObject {
    var item: [String]
    
    init(item: [String]) {
        self.item = item
    }
}
