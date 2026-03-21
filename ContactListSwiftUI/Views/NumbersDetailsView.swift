import SwiftUI

struct NumbersDetailsView: View {
    let contact: Contact
    
    var body: some View {
        Section(header: Text("\(contact.name) \(contact.surname)")) {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Label("\(contact.phone)", systemImage: "phone")
                }
                Divider()
                HStack {
                    Label("\(contact.email)", systemImage: "tray")
                }
            }
        }
    }
}

#Preview {
    NumbersDetailsView(contact: ContactData.getContact())
}
