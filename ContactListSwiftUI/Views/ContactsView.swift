import SwiftUI
            
struct ContactsView: View {
    @Binding var contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.self) { contact in
                NavigationLink(destination: ContactDetailsView(title: "\(contact.name) \(contact.surname)", contact: contact)) {
                    ContactView(contact: contact)
                }
            }
            .navigationTitle(Text("Contact List"))
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContactsView(contacts: .constant([ContactData.getContact()]))
}
