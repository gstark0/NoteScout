import SwiftUI

struct NoteScreen: View {
    
    @State private var note: String = "This is your note"
    
    var body: some View {
        VStack {
            TextEditor(text: $note)
                .padding()
                .background(Color(.red))
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle("20 Aug 2020")
        }
    }
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
}
