//
//  ContentView.swift
//  TodoList
//
//  Created by Cindy Chen on 2024-04-05.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""
    
    // The list of to-do items
    @State var todos: [TodoItem] = exampleItems
    
    
    
    // MARK: Computed properties
    var body: some View{
        NavigationView{
            
            VStack {
                
                List($todos) { $todo in
                    
                    ItemView(currentItem: $todo)
                    // Delte a to-do item
                        .swipeActions{
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                    // Tap to mark as done
                        .onTapGesture {
                            todo.done.toggle()
                        }
                    
                }
                .searchable(text: $searchText)
                
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    
                    Button("ADD") {
                        // Add the new to-do item
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationBarTitle("To do")
        }
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Apend to the array
        todos.append(todo)
        
    }
    
    func delete(_ todo: TodoItem) {
        
        //Remove the provided to-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
    
}

#Preview {
    LandingView()
}
