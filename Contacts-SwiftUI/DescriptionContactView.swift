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
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(detailPerson.phoneNumber)
            }
            HStack {
                Image(systemName: "tray.and.arrow.down")
                    .foregroundColor(.blue)
                Text(detailPerson.emailAddress)
            }
            
            .navigationTitle("\(detailPerson.fullName)")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct DescriptionContactView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionContactView(detailPerson: Person(
            name: "Alex",
            surName: "Smith",
            phoneNumber: "+7-392-305-84-00",
            emailAddress: "bkmgbnf@yandex.ru")
        )
    }
}
