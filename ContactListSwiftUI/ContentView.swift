import SwiftUI

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
