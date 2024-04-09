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
    
    //The list of items the user has added so far
    @State var itemsAdded: [String] = []
    
    // The search text
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View{
        NavigationView{
            
            VStack {
                
                List {
                    ItemView(
                        title: "Study for Chemistry quiz",
                        done: false
                    )
                    
                    
                    ItemView(
                        title: "Finish Computer Science assignment",
                        done: true
                    )
                    
                    
                    ItemView(
                        title: "Go for a run around campus",
                        done: false
                    )
                    
                }
                .searchable(text: $searchText)
                
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    
                    Button("ADD") {
                        // Add the new to-do item
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationBarTitle("To do")
        }
    }

}

    
#Preview {
    LandingView()
}


