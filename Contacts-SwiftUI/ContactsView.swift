//
//  ContactsView.swift
//  Contacts-SwiftUI
//
//  Created by Алексей Синяговский on 27.05.2022.
//

import SwiftUI

struct ContactsView: View {
    
    var persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.emailAddress) { person in
                NavigationLink(
                    destination: DescriptionContactView(detailPerson: person)
                ) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getPerson())
    }
}
