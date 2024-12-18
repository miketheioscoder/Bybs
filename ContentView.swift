import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MainScreenView() // Mostra direttamente la MainScreenView
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Migliora la navigazione per iPhone/iPad
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
