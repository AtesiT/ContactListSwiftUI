import SwiftUI

var contacts: [Contact] {
    var users = [Contact]()
    for _ in 0..<10 {
        users.append(ContactData.getContact())
    }
    return users
}
            
struct ContactsView: View {
    var body: some View {
        List(contacts, id: \.self) { contact in
            Text("\(contact.name) \(contact.surname)")
        }
    }
}

#Preview {
    ContactsView()
}
