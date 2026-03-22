import SwiftUI

struct ContactDetailsView: View {
    var title: String
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            VStack(alignment: .leading) {
                Divider()
                HStack(alignment: .top) {
                    Label {
                        Text("\(contact.phone)")
                    } icon: {
                        Image(systemName: "phone")
                            .foregroundStyle(.blue)
                    }
                }
                Divider()
                HStack(alignment: .top) {
                    Label {
                        Text("\(contact.email)")
                    } icon: {
                        Image(systemName: "tray")
                            .foregroundStyle(.blue)
                    }
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle(title)
    }
}

#Preview {
    ContactDetailsView(title: "ContactDetailsView", contact: ContactData.getContact())
}
