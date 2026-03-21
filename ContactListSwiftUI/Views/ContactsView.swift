import SwiftUI

var contacts: [User] {
    var users = [User]()
    for _ in 0..<10 {
        users.append(UserData.getUser())
    }
    return users
}
            
struct ContactsView: View {
    var body: some View {
        List(contacts, id: \.self) { contact in
            Text("\(contact.fullname)")
        }
    }
}

#Preview {
    ContactsView()
}
