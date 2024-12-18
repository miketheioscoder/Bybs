import SwiftUI
import SwiftData

@main
struct BybsApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView() // La prima schermata è lo Splash Screen
                .modelContainer(PersistenceController.shared.container)
        }
    }
}
