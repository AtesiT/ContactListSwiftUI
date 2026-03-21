import SwiftUI

struct NumbersView: View {
    var body: some View {
        List(contacts, id: \.self) { contact in
            NumbersDetailsView(contact: contact)
        }
    }
}

#Preview {
    NumbersView()
}
