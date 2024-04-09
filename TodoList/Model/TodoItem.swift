//
//  TodoItem.swift
//  TodoList
//
//  Created by Cindy Chen on 2024-04-08.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "Chemistry quiz", done: false)

let secondItem = TodoItem(title: "CS Assignment", done: true)

let thirdItem = TodoItem(title: "Go for a run", done: false)



let exampleItems = [
firstItem
,
secondItem
,
thirdItem
    
]
