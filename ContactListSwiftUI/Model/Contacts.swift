import Foundation

struct User: Hashable {
    let name: String
    let surname: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

struct UserData {
    static let names = [
        "James", "Mary", "Robert", "Patricia", "John", "Jennifer",
    ]
    
    static let surnames = [
        "Jackson", "Martin", "Lee", "Perez", "Thompson", "White",
    ]
    
    static func getUser() -> User {
        User(
            name: names.randomElement()!,
            surname: surnames.randomElement()!
        )
    }
}
