import SwiftUI

struct NumbersView: View {
    @Binding var contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.self) { contact in
                NumbersDetailsView(contact: contact)
            }
            .listStyle(.plain)
            .navigationTitle(Text("Contact List"))
        }
    }
}

#Preview {
    NumbersView(contacts: .constant([ContactData.getContact()]))
}

