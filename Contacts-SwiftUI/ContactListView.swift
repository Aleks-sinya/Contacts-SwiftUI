//
//  ContactListView.swift
//  Contacts-SwiftUI
//
//  Created by Алексей Синяговский on 27.05.2022.
//

import SwiftUI

struct ContactListView: View {
    
    var persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.emailAddress) { person in
                    Section(header: Text("\(person.fullName)")) {
                        
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text(person.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "tray.and.arrow.down")
                                .foregroundColor(.blue)
                            Text(person.emailAddress)
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPerson())
    }
}
