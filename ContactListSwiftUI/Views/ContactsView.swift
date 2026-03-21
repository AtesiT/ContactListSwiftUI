import SwiftUI
            
struct ContactsView: View {
    var body: some View {
        NavigationView {
            List(contacts, id: \.self) { contact in
                NavigationLink(destination: ContactDetailsView(title: "\(contact.name) \(contact.surname)", contact: contact)) {
                    ContactView(contact: contact)
                }
            }
        }
    }
}

#Preview {
    ContactsView()
}
