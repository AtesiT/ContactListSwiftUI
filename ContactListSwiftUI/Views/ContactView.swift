import SwiftUI

struct ContactView: View {
    let contact: User = UserData.getUser()
    
    var body: some View {
        HStack {
            Text(contact.fullname)
        }
    }
}

#Preview {
    ContactView()
}
