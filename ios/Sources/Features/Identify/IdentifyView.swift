import SwiftUI

struct IdentifyView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Photo & Sketch Identification")
                    .font(.title3)
                Text("Capture a photo or scan a pencil sketch to get species suggestions. Add traits to improve accuracy.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                Spacer()
                Text("Safety: Do not consume organisms based on app identifications.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            .padding()
            .navigationTitle("Identify")
        }
    }
}
