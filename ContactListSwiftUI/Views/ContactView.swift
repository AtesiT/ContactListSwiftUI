import SwiftUI

struct ContactView: View {
    let contact: Contact
    
    var body: some View {
        HStack {
            Text("\(contact.name) \(contact.surname)")
        }
    }
}

#Preview {
    ContactView(contact: ContactData.getContact())
}
