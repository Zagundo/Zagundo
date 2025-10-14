import SwiftUI

struct LearnView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Lessons & Quizzes")
                    .font(.title3)
                Text("Practice terminology with interactive examples and spaced repetition.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Learn")
        }
    }
}
