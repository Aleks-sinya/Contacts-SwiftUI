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
                    Section(header: Text(person.fullName)) {
                        
                        HStack {
                            Label(
                                title: { Text(person.phoneNumber) },
                                icon: { Image(systemName: "phone")
                                    .foregroundColor(.blue) }
                            )
                        }
                        
                        HStack {
                            Label(
                                title: { Text(person.emailAddress) },
                                icon: { Image(systemName: "tray.and.arrow.down")
                                    .foregroundColor(.blue) }
                            )
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
