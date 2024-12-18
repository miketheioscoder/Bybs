import SwiftUI

struct CalendarDayView: View {
    let date: Date
    let isToday: Bool
    let taskChoices: [TaskChoice]
    let dayColor: Color
    
    var body: some View {
        let formatter = DateFormatter()
        formatter.dateFormat = "E dd" // Giorno settimana + data (es. Mon 18)
        let dayString = formatter.string(from: date) // Formattazione della data
        
        return VStack {
            // Giorno della settimana (es. Mon)
            Text(dayString.prefix(3))
                .font(isToday ? .headline : .subheadline) // Più grande per il giorno attuale
                .fontWeight(isToday ? .bold : .regular) // Grassetto solo per il giorno attuale
                .foregroundColor(isToday ? .white : Color.white.opacity(0.7))
            
            // Data (es. 18)
            Text(dayString.suffix(2))
                .font(isToday ? .title : .body) // Più grande per il giorno attuale
                .fontWeight(isToday ? .bold : .regular) // Grassetto solo per il giorno attuale
                .foregroundColor(isToday ? .white : Color.white.opacity(0.7))
        }
        .padding()
        .background(isToday ? dayColor : Color.clear) // Usa il colore passato per il giorno
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isToday ? Color.white : Color.clear, lineWidth: 2)
        )
    }
}
