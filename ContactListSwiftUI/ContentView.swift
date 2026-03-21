import SwiftUI

var contacts: [Contact] {
    var users = [Contact]()
    for _ in 0..<10 {
        users.append(ContactData.getContact())
    }
    return users
}

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                ContactsView()
                    .tabItem {
                        Label("Contacts", systemImage: "person.2.fill")
                    }
                NumbersView()
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
