import SwiftUI

@main
struct NoPeekApp: App {
    @State private var isEnabled = true

    var body: some Scene {
        MenuBarExtra("NoPeek", systemImage: isEnabled ? "eye.slash.fill" : "eye") {
            Toggle("Protection enabled", isOn: $isEnabled)
            Divider()
            Button("Quit NoPeek") {
                NSApplication.shared.terminate(nil)
            }
            .keyboardShortcut("q")
        }
    }
}
