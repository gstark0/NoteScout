import SwiftUI

struct NoteScreen: View {
    
    @ObservedObject var note: NoteData
    
    var body: some View {
        VStack {
            TextEditor(text: $note.content)
                .padding()
                .background(note.color)
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle(note.date)
        }
    }
    
    init(note: NoteData) {
        UITextView.appearance().backgroundColor = .clear
        self.note = note
    }
}
