import Foundation

struct Contact: Hashable {
    let name: String
    let surname: String
    let phone: Int
    let email: String
    
}

struct ContactData {
    static let names = [
        "James", "Mary", "Robert", "Patricia", "John", "Jennifer",
    ]
    
    static let surnames = [
        "Jackson", "Martin", "Lee", "Perez", "Thompson", "White",
    ]
    
    static let phone = [
        10001000, 20002000, 30003000, 40004000, 50005000,
    ]
    
    static let email = [
        "apple@email.com", "google@email.com", "microsoft@email.com",
    ]
    
    static func getContact() -> Contact {
        Contact(
            name: names.randomElement()!,
            surname: surnames.randomElement()!,
            phone: phone.randomElement()!,
            email: email.randomElement()!
        )
    }
}
