//
//  Person.swift
//  Contacts-SwiftUI
//
//  Created by Алексей Синяговский on 27.05.2022.
//

import Foundation

struct Person {
    let name: String
    let surName: String
    let phoneNumber: String
    let emailAddress: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.info.names.shuffled()
        let surNames = DataManager.info.surNames.shuffled()
        let phoneNumbers = DataManager.info.phoneNumbers.shuffled()
        let emailAddresses = DataManager.info.emailAddresses.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surName: surNames[index],
                phoneNumber: phoneNumbers[index],
                emailAddress: emailAddresses[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}
