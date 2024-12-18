/*
import SwiftUI
import SwiftData

struct MainScreenView: View {
    @State private var isTaskVisible = false
    @State private var selectedTask: String?
    @State private var tasksToChoose: [String] = []
    @State private var showButtons = false
    @State private var isTextVisible = true
    @State private var showChooseTaskText = true
    @State private var isAnimating = false // Per gestire l'animazione del poligono

    let tasks = [
        "Meditate for 10 minutes",
        "Drink 2 liters of water",
        "Go for a morning walk",
        "Write down three things you’re grateful for",
        "Call a loved one and check in on them",
        "Read 10 pages of a book",
        "Do 20 minutes of yoga",
        "Compliment someone sincerely",
        "Donate unused items to charity",
        "Spend time in nature without your phone",
        "Write a thank-you note to someone",
        "Volunteer for a local cause",
        "Smile at five strangers today",
        "Try a new healthy recipe",
        "Avoid complaining for the entire day",
        "Journal your thoughts before bed",
        "Learn one new word and use it in conversation",
        "Deep clean one room in your house",
        "Spend 30 minutes decluttering",
        "Plant a tree or flowers in your garden",
        "Fast from social media for a day",
        "Take 10 deep breaths during moments of stress",
        "Help a neighbor with a chore",
        "Donate to a cause you believe in",
        "Wake up 30 minutes earlier for 'me' time",
        "Attend a fitness class you’ve never tried",
        "Write down your goals for the week",
        "Practice random acts of kindness",
        "Start a 30-day personal challenge",
        "Reflect on your day and learn from mistakes",
        "Avoid processed foods for the day",
        "Replace soda with water or herbal tea",
        "Compliment yourself in the mirror",
        "Listen to calming music or nature sounds",
        "Share something inspirational on social media",
        "Organize your workspace for productivity",
        "Skip impulse purchases today",
        "Visit a local museum or cultural site",
        "Watch a documentary that inspires growth",
        "Write a letter to your future self",
        "Donate blood if eligible",
        "Spend 15 minutes stretching before bed",
        "Try a digital detox for the evening",
        "Support a local small business",
        "Help an elderly person with groceries",
        "Create a vision board for your dreams",
        "Compliment someone’s effort, not just results",
        "Forgive yourself for a past mistake",
        "Read an inspirational biography",
        "Carry a reusable water bottle all day",
        "Learn and practice a breathing exercise",
        "Eat a meal without any distractions",
        "Reach out to an old friend",
        "Attend a spiritual or self-growth event",
        "Write down your strengths and weaknesses",
        "Take a cold shower to invigorate yourself",
        "Learn a new skill online",
        "Perform a chore for someone in your family",
        "Create a list of things you’re proud of",
        "Compliment a coworker for their hard work",
        "Walk or bike instead of driving today",
        "Eat a plant-based meal",
        "Spend 5 minutes focusing on your posture",
        "Observe the sunrise or sunset",
        "Read a spiritual text of your choice",
        "Set a realistic budget for the week",
        "Volunteer to help at a community event",
        "Write down five life lessons you’ve learned",
        "Reflect on your core values",
        "Call your parents or a mentor and thank them",
        "Recycle something you would usually throw away",
        "Walk 10,000 steps today",
        "Give a genuine smile to everyone you meet",
        "Listen to an inspirational podcast",
        "Take responsibility for a mistake",
        "Prepare a healthy meal for a friend",
        "Teach someone something new",
        "Try intermittent fasting for one day",
        "Find five things to be grateful for right now",
        "Compliment a stranger’s kindness or effort",
        "Avoid using plastic for the day",
        "Meditate on compassion for others",
        "Send flowers to someone unexpectedly",
        "Start your day with positive affirmations",
        "Spend quality time with a pet or animal",
        "Do 50 jumping jacks or a quick workout",
        "Refrain from gossip for an entire day",
        "Focus on active listening in conversations",
        "Offer to babysit for a friend or family member",
        "Write a poem about your feelings today",
        "Pick up litter during your walk",
        "Be patient with someone who frustrates you",
        "Try a new meditation app",
        "Spend an hour creating art or crafting",
        "Plant herbs in a small pot or garden",
        "Learn a new recipe from a different culture",
        "Compliment someone’s personality",
        "Practice mindful eating at every meal",
        "Drink a green smoothie or fresh juice",
        "Limit your screen time to 2 hours today",
        "Volunteer at an animal shelter",
        "Write down the best part of your day",
        "Attend a yoga or mindfulness session",
        "Spend time with someone who inspires you",
        "Do something outside your comfort zone",
        "Give away clothes you haven’t worn in a year",
        "Practice one hour of silence",
        "Write a short story about a memory",
        "Explore a nearby park or nature reserve",
        "Send an encouraging text to a friend",
        "Support a cause you believe in financially",
        "Spend an evening stargazing",
        "Give someone your full attention in a conversation",
        "Set a screen-free evening once a week",
        "Try a gratitude meditation before bed",
        "Offer to help someone carry heavy bags",
        "Reflect on a recent failure and its lessons",
        "Practice saying 'no' to things you don’t need",
        "Create a budget for your long-term goals",
        "Compliment yourself on a skill you’ve improved",
        "Drink only water for an entire day",
        "Avoid sugar for one day",
        "Take a 20-minute power nap",
        "Clean and organize your phone’s apps",
        "Write down 10 affirmations for the week",
        "Reconnect with a forgotten hobby",
        "Plan a weekend trip or activity",
        "Speak kindly to yourself all day",
        "Learn the basics of a new language",
        "Be silent for the first 30 minutes of your day",
        "Write down five ways you can be more eco-friendly",
        "Say 'thank you' instead of apologizing unnecessarily",
        "Host or attend a gathering with friends",
        "Try a vegan or vegetarian dish",
        "Spend an evening reflecting on your dreams",
        "Make a playlist of your favorite songs",
        "Take a different route to work or school",
        "Try coloring or painting for relaxation",
        "Start a new fitness program",
        "Drink a cup of herbal tea instead of coffee",
        "Send a handwritten letter to a friend or family member",
        "Learn a new workout move or dance step",
        "Write down your bucket list",
        "Try journaling about your future self",
        "Be fully present during a conversation",
        "Reduce your spending for one week",
        "Celebrate a small achievement with a treat",
        "Create a list of people who inspire you",
        "Make a photo album of your favorite memories",
        "Spend time observing wildlife or birds",
        "Give someone your undivided attention for 10 minutes",
        "Reflect on your purpose and how to align with it",
        "Start your day with 5 sun salutations",
        "Focus on kindness in all interactions today",
        "Take on a new responsibility at work or home",
        "Celebrate your uniqueness"
    ]


    var body: some View {
        VStack {
            // Intestazione
            VStack(alignment: .leading, spacing: 8) {
                Text("A new day, a new you!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .minimumScaleFactor(0.5)

                Text("Remember that time flies!")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.horizontal)
            }
            .padding(.top, 50)

            // Calendario dinamico
            HStack(spacing: 16) {
                ForEach(-2...2, id: \.self) { offset in
                    CalendarDayView(date: Date().addingTimeInterval(TimeInterval(86400 * offset)), isToday: offset == 0)
                }
            }
            .padding(.vertical, 20)

            // Scritta centrale sopra il bottone
            if isTextVisible {
                Text(isTaskVisible ? "Choose a task" : "Tap to generate a task")
                    .font(isTaskVisible ? .title : .subheadline)
                    .fontWeight(isTaskVisible ? .bold : .regular)
                    .foregroundColor(.white.opacity(0.8))
                    .padding(.top, 70)
                    .opacity(showChooseTaskText ? 1 : 0)
                    .animation(.easeInOut, value: showChooseTaskText)
            }

            Spacer()

            // Bottone per generare le task
            if !isTaskVisible {
                Button(action: {
                    withAnimation {
                        tasksToChoose = tasks.shuffled().prefix(3).map { $0 }
                        isTaskVisible = true
                    }
                }) {
                    Image("Polygon3") // Immagine del bottone
                       
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .scaleEffect(isAnimating ? 1.1 : 1.0) // Effetto respiro
                        .animation(
                            .easeInOut(duration: 1.2)
                                .repeatForever(autoreverses: true),
                            value: isAnimating
                        )
                        .onAppear {
                            isAnimating = true // Avvia l'animazione
                        }
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.vertical, 20)
            }

            // Mostra le 3 task per la scelta
            if isTaskVisible && !showButtons {
                VStack(spacing: 20) {
                    ForEach(tasksToChoose, id: \.self) { task in
                        Button(action: {
                            withAnimation {
                                selectedTask = task
                                showButtons = true
                                tasksToChoose = [task]
                                showChooseTaskText = false // Nasconde "Choose a task"
                            }
                        }) {
                            Text(task)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.6))
                                .cornerRadius(10)
                        }
                        .transition(.opacity)
                    }
                }
                .padding(.horizontal, 20)
            }

            // Mostra i pulsanti "I did it" e "I didn't"
            if showButtons {
                VStack(spacing: 20) {
                    Text("Did you complete the task?")
                        .font(.headline)
                        .foregroundColor(.white)

                    HStack(spacing: 20) {
                        Button(action: {
                            // Azione per "I did it"
                        }) {
                            Text("I did it")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .cornerRadius(10)
                        }

                        Button(action: {
                            // Azione per "I didn't"
                        }) {
                            Text("I didn't")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.red)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .transition(.opacity)
            }

            Spacer()
        }
        .background(Color(hex: "298C42").ignoresSafeArea())
        .navigationBarHidden(true)
    }
}*/
import SwiftUI
import SwiftData

struct MainScreenView: View {
    @State private var isTaskVisible = false
    @State private var selectedTask: String?
    @State private var tasksToChoose: [String] = []
    @State private var showButtons = false
    @State private var isTextVisible = true
    @State private var showChooseTaskText = true
    @State private var isAnimating = false
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var didCompleteTask: Bool? // true per "I did it", false per "I didn't"
    @State private var taskCompletionColor: Color = .clear
    @State private var showCompletionButtons = false // Track visibility of completion buttons
    @State private var showingCompletionScreen = false // Flag per la schermata "did it / didn't"
    @State private var isAppClosedWhileInTask = false // Variabile per tracciare se l'app è stata chiusa in fase di task
    @Environment(\.scenePhase) private var scenePhase
    @Environment(\.modelContext) private var context
    @Query private var taskChoices: [TaskChoice] // Per ottenere i task da SwiftData

    let tasks = [
        "Meditate for 10 minutes", "Drink 2 liters of water", "Go for a morning walk",
        "Write down three things you’re grateful for", "Call a loved one and check in on them"
    ]
    
    var body: some View {
        VStack {
            // Intestazione
            VStack(alignment: .leading, spacing: 8) {
                Text("A new day, a new you!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .minimumScaleFactor(0.5)

                Text("Remember that time flies!")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.horizontal)
            }
            .padding(.top, 50)

            // Calendario dinamico
            HStack(spacing: 16) {
                ForEach(-2...2, id: \.self) { offset in
                    CalendarDayView(
                        date: Date().addingTimeInterval(TimeInterval(86400 * offset)),
                        isToday: offset == 0,
                        taskChoices: taskChoices,
                        dayColor: offset == 0 ? taskCompletionColor : .clear
                    )
                }
            }
            .padding(.vertical, 20)

            // Scritta centrale sopra il bottone
            if isTextVisible && !showCompletionButtons {
                Text(isTaskVisible ? "Choose a task" : "Tap to generate a task")
                    .font(isTaskVisible ? .title : .subheadline)
                    .fontWeight(isTaskVisible ? .bold : .regular)
                    .foregroundColor(.white.opacity(0.8))
                    .padding(.top, 70)
                    .opacity(showChooseTaskText ? 1 : 0)
                    .animation(.easeInOut, value: showChooseTaskText)
            }

            Spacer()

            // Bottone per generare le task
            if !isTaskVisible && !showCompletionButtons {
                Button(action: {
                    withAnimation {
                        tasksToChoose = tasks.shuffled().prefix(3).map { $0 }
                        isTaskVisible = true
                        showCompletionButtons = false
                    }
                }) {
                    Image("Polygon3") // Immagine del bottone
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .scaleEffect(isAnimating ? 1.2 : 1.0) // Animazione effetto battito
                        .animation(
                            .easeInOut(duration: 1.5)
                                .repeatForever(autoreverses: true),
                            value: isAnimating
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.vertical, 20)
            }

            // Mostra le 3 task per la scelta
            if isTaskVisible && !showCompletionButtons {
                VStack(spacing: 20) {
                    ForEach(tasksToChoose, id: \.self) { task in
                        Button(action: {
                            withAnimation {
                                saveTaskChoice(task) // Salva la task scelta
                                selectedTask = task
                                showCompletionButtons = true // Mostra i pulsanti
                                showChooseTaskText = false
                                isTaskVisible = false // Nasconde il poligono
                            }
                        }) {
                            Text(task)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.6))
                                .cornerRadius(10)
                        }
                    }
                    
                    // Pulsante per rigenerare le task
                    Button(action: {
                        withAnimation {
                            tasksToChoose = tasks.shuffled().prefix(3).map { $0 }
                        }
                    }) {
                        Text("Regenerate Tasks")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 20)
                }
                .padding(.horizontal, 20)
            }

            // Mostra la task selezionata tra il messaggio e i pulsanti
            if showCompletionButtons {
                VStack(spacing: 20) {
                    Text("Did you complete the task?")
                        .font(.headline)
                        .foregroundColor(.white)
                    if let task = selectedTask {
                        HStack(spacing: 10) {
                            Text("\"\(task)\"")
                                .font(.italic(.title3)()) // Testo più piccolo e in corsivo
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.6))
                                .cornerRadius(10)
                        }
                    }
                    HStack(spacing: 20) {
                        Button(action: {
                            withAnimation {
                                didCompleteTask = true
                                taskCompletionColor = .yellow
                                alertMessage = "Congratulations! You completed a task that improved your day."
                                showAlert = true
                                showingCompletionScreen = true // Mostra la schermata "did it"
                                isAppClosedWhileInTask = false // Reset dello stato di chiusura
                            }
                        }) {
                            Text("I did it")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .cornerRadius(10)
                        }

                        Button(action: {
                            withAnimation {
                                didCompleteTask = false
                                taskCompletionColor = .red
                                alertMessage = "Don't worry, you can always try tomorrow!"
                                showAlert = true
                                showingCompletionScreen = true // Mostra la schermata "didn't"
                                isAppClosedWhileInTask = false // Reset dello stato di chiusura
                            }
                        }) {
                            Text("I didn't")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.red)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }

            Spacer()
        }
        .background(Color(hex: "298C42").ignoresSafeArea())
        .navigationBarHidden(true)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Task Feedback"), message: Text(alertMessage), dismissButton: .default(Text("OK")) {
                // Resetta sempre al termine dell'azione
                resetToInitialState() // Torna alla schermata iniziale
                showingCompletionScreen = false
            })
        }
        .onAppear {
            // Recupera lo stato della task se l'app è stata chiusa mentre era in corso
            if let lastTask = taskChoices.last {
                if lastTask.isCompleted == nil {
                    selectedTask = lastTask.task
                    didCompleteTask = lastTask.isCompleted
                    taskCompletionColor = didCompleteTask == true ? .yellow : .red
                    showCompletionButtons = true
                } else {
                    resetToInitialState() // Resetta quando la task è completata
                }
            }
        }
        .onChange(of: scenePhase) { phase in
            if phase == .background {
                // Quando l'app va in background, salviamo lo stato della task (se è in corso)
                if showCompletionButtons && didCompleteTask == nil {
                    isAppClosedWhileInTask = true
                } else {
                    // Se la task è stata completata, rimuovi la memoria
                    resetToInitialState()
                }
            }
        }
    }

    private func saveTaskChoice(_ task: String) {
        let newTask = TaskChoice(task: task, isCompleted: nil)
        context.insert(newTask)
        try? context.save()
    }

    private func resetToInitialState() {
        withAnimation {
            // Reset della schermata iniziale
            isTaskVisible = false
            selectedTask = nil
            showCompletionButtons = false
            showChooseTaskText = true
            tasksToChoose = []
            clearCompletedTasks() // Rimuovi i task completati
        }
    }

    private func clearCompletedTasks() {
        // Rimuovi i task completati dalla memoria
        let completedTasks = taskChoices.filter { $0.isCompleted != nil }
        for task in completedTasks {
            context.delete(task)
        }
        try? context.save()
    }
}
