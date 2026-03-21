import SwiftUI

struct ContactDetailsView: View {
    var title: String
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            VStack(alignment: .leading) {
                Divider()
                HStack(alignment: .top) {
                    Label("\(contact.phone)", systemImage: "phone")
                }
                Divider()
                HStack(alignment: .top) {
                    Label("\(contact.email)", systemImage: "tray")
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
