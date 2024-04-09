//
//  ItemView.swift
//  TodoList
//
//  Created by Cindy Chen on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {  Text(currentItem.title) },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                
            }
        )
    }
}

#Preview {
    ItemView(currentItem: firstItem)
}
