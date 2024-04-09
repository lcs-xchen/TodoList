//
//  ItemView.swift
//  TodoList
//
//  Created by Cindy Chen on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {  TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical) },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                
                //Tap to ark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                
            }
        )
    }
}

//#Preview {
//    List{
//        ItemView(currentItem: Binding.constant(firstItem))
//        ItemView(currentItem: Binding.constant(secondItem))
//    }
//}
