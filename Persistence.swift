import SwiftData

struct PersistenceController {
    static let shared = PersistenceController()

    let container: ModelContainer

    init() {
        // Crea il ModelContainer per TaskChoice
        container = try! ModelContainer(for: TaskChoice.self)
    }
}
