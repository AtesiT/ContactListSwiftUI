import SwiftUI

struct ContentView: View {
    @State private var contacts: [Contact] = getContacts()
    
    private static func getContacts() -> [Contact] {
        var users = [Contact]()
        for _ in 0..<10 {
            users.append(ContactData.getContact())
        }
        return users
    }
    
    var body: some View {
        VStack {
            TabView {
                ContactsView(contacts: $contacts)
                    .tabItem {
                        Label("Contacts", systemImage: "person.2.fill")
                    }
                NumbersView(contacts: $contacts)
                    .tabItem {
                        Label("Numbers", systemImage: "phone.fill")
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
