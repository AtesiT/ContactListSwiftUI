import SwiftUI
            
struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                NavigationLink(
                    person.fullName,
                    destination: PersonView(person: person)
                )
            }
            .navigationTitle(Text("Contact List"))
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContactListView(contacts: Person.getContactList())
}
