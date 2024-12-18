import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var moveLogo = false
    @State private var opacity = 0.0 // Logo inizialmente invisibile

    var body: some View {
        ZStack {
            Color(hex: "298C42").ignoresSafeArea() // Sfondo verde
            
            // Logo che compare sfumando
            Image("BYBSE") // Assicurati di avere un'immagine chiamata "Logo" in Assets
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .offset(x: moveLogo ? 500 : 0) // Logo si sposta a destra
                .opacity(opacity) // Impostiamo la trasparenza
                .animation(.easeInOut(duration: 1.0), value: opacity) // Animazione di comparsa
                .animation(.easeInOut(duration: 1.0), value: moveLogo) // Animazione di movimento
                .animation(.easeInOut(duration: 1.0).delay(1.0), value: opacity) // Animazione di scomparsa dopo il movimento

            // ContentView che appare dopo la scomparsa del logo
            if isActive {
                ContentView() // Mostra la ContentView dopo che l'animazione è completa
                    .transition(.opacity) // Appare con transizione opacità
                    .animation(.easeInOut(duration: 1.0), value: isActive) // Animazione di apparizione
            }
        }
        .onAppear {
            // Dopo 2 secondo, fai comparire il logo sfumando
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                withAnimation {
                    opacity = 1.0 // Logo diventa visibile
                }
            }
            
            // Dopo 2 secondi, inizia il movimento del logo e scomparsa
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    moveLogo = true // Muovi il logo a destra
                    opacity = 0 // Fai scomparire il logo
                }
            }
            
            // Dopo 3 secondi, attiva la navigazione alla ContentView
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                withAnimation {
                    isActive = true // Mostra la ContentView
                }
            }
        }
    }
}
