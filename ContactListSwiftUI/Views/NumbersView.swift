import SwiftUI

struct NumbersView: View {
    @Binding var contacts: [Contact]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            NumbersDetailsView(contact: contact)
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactsView(contacts: .constant([ContactData.getContact()]))
}

