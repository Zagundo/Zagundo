import SwiftUI

struct DescribeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Guided Traits & Vocabulary")
                    .font(.title3)
                Text("Learn to describe leaves, bark, flowers, fruits, and fungal features using a controlled vocabulary.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Describe")
        }
    }
}
