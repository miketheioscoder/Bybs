import SwiftUI

struct TaskView: View {
    let task: String
    
    var body: some View {
        VStack {
            Text("Your task for today")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            Spacer()
            
            // Riquadro per la task con angoli smussati
            Text(task)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .background(Color(hex: "3A7F48")) // Colore di sfondo del riquadro
                .cornerRadius(15) // Angoli smussati
                .shadow(radius: 10) // Ombra per un effetto più moderno
                .padding(.horizontal, 40)
            
            Spacer()
        }
        .background(Color(hex: "298C42").ignoresSafeArea())
        .transition(.move(edge: .bottom)) // Animazione della transizione
    }
}
