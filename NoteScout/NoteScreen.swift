import SwiftUI

struct NoteScreen: View {
    
    @ObservedObject var note: NoteData
    var orange = Color(red: 254/255, green: 165/255, blue: 123/255)
    var blue = Color(red: 166/255, green: 241/255, blue: 254/255)
    var purple = Color(red: 163/255, green: 134/255, blue: 218/255)
    var yellow = Color(red: 254/255, green: 206/255, blue: 121/255)
    
    var body: some View {
        ZStack {
            TextEditor(text: $note.content)
                .padding()
                .font(.system(size: 18))
                .background(note.color)
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle(note.date)
            
            HStack {
                Spacer()
                VStack(spacing: 5) {
                    Circle()
                        .fill(orange)
                        .frame(width: 25, height: 25)
                    Circle()
                        .fill(blue)
                        .frame(width: 25, height: 25)
                    Circle()
                        .fill(purple)
                        .frame(width: 25, height: 25)
                    Circle()
                        .fill(yellow)
                        .frame(width: 25, height: 25)
                }
                    .padding(10)
                    .background(Color(.white))
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .padding(.horizontal)
            }
        }
    }
    
    init(note: NoteData) {
        UITextView.appearance().backgroundColor = .clear
        self.note = note
    }
}
