//
//  DescriptionContactView.swift
//  Contacts-SwiftUI
//
//  Created by Алексей Синяговский on 27.05.2022.
//

import SwiftUI

struct DescriptionContactView: View {
    
    let detailPerson: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            
            HStack {
                Label(
                    title: { Text(detailPerson.phoneNumber) },
                      icon: { Image(systemName: "phone")
                    .foregroundColor(.blue) }
                )
            }
            
            HStack {
                Label(
                    title: { Text(detailPerson.emailAddress) },
                    icon: { Image(systemName: "tray.and.arrow.down")
                    .foregroundColor(.blue) }
                )
            }
            
            .navigationTitle(detailPerson.fullName)
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct DescriptionContactView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionContactView(detailPerson: Person.getPerson().first!)
    }
}
