//
//  ContentView.swift
//  Contacts-SwiftUI
//
//  Created by Алексей Синяговский on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
