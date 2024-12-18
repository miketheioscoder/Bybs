import SwiftData
import Foundation

@Model
class TaskChoice {
    @Attribute var id: UUID   // UUID senza specificare opzioni
    @Attribute var task: String
    @Attribute var date: Date
    @Attribute var isCompleted: Bool?  // Aggiungi un flag per completamento
    
    init(task: String, date: Date = Date(), isCompleted: Bool? = nil) {
        self.id = UUID()  // Assegna un nuovo UUID
        self.task = task   // Assegna la task
        self.date = date  // Assegna la data (di default corrente)
        self.isCompleted = isCompleted
    }
}
