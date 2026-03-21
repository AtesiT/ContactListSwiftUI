import SwiftUI
            
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
