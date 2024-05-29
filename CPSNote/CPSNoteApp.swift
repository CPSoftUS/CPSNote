import SwiftUI
import SwiftData

@main
struct CPSNoteApp: App {
    var body: some Scene {
        WindowGroup {
									MainNotePad(title: "", actTxt: "")
            
            .modelContainer(for: [DataFields.self])
        }
    }
}
