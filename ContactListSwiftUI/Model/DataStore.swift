final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "James",
        "Mary",
        "Robert",
        "Patricia",
        "John",
        "Jennifer",
    ]
    
    let surnames = [
        "Jackson",
        "Martin",
        "Lee",
        "Perez",
        "Thompson",
        "White",
    ]
    
    let phone = [
        "10001000",
        "20002000",
        "30003000",
        "40004000",
        "50005000",
        "60006000",
    ]
    
    let email = [
        "apple@email.com",
        "google@email.com",
        "microsoft@email.com",
        "yahoo@email.com",
        "facebook@email.com",
        "github@email.com",
    ]
    
    private init() {}
}
