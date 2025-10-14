import SwiftUI

@main
struct FloraGuideApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

struct RootView: View {
    var body: some View {
        TabView {
            IdentifyView()
                .tabItem { Label("Identify", systemImage: "camera.viewfinder") }
            DescribeView()
                .tabItem { Label("Describe", systemImage: "text.badge.plus") }
            JournalView()
                .tabItem { Label("Journal", systemImage: "book.closed") }
            LearnView()
                .tabItem { Label("Learn", systemImage: "graduationcap") }
        }
    }
}
