//
//  TodoListApp.swift
//  TodoList
//
//  Created by Cindy Chen on 2024-04-05.
//

import SwiftData
import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
