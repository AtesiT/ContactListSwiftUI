import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    let avatar: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.email.shuffled()
        let phones = dataStore.phone.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index],
                avatar: "person.fill"
                
            )
            persons.append(person)
        }
        return persons
    }
}
