import SwiftUI

struct JournalView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Your Observations")
                    .font(.title3)
                Text("Add notes, photos, sketches, location, and habitat context to build a personal field journal.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Journal")
        }
    }
}
