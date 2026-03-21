import SwiftUI

struct ContactView: View {
    let contact: User
    
    var body: some View {
        HStack {
            Text(contact.fullname)
        }
    }
}

#Preview {
    ContactView(contact: UserData.getUser())
}
