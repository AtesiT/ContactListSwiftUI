import SwiftUI

struct NumbersDetailsView: View {
    let contact: Contact
    
    var body: some View {
        Section(header: Text("\(contact.name) \(contact.surname)")) {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Label {
                        Text("\(contact.name)")
                            .foregroundStyle(.primary)
                    } icon: {
                        Image(systemName: "phone")
                            .foregroundStyle(.blue)
                    }
                }
                Divider()
                HStack {
                    Label {
                        Text("\(contact.email)")
                            .foregroundStyle(.primary)
                    } icon: {
                        Image(systemName: "tray")
                            .foregroundStyle(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    NumbersDetailsView(contact: ContactData.getContact())
}
