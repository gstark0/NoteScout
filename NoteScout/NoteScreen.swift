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
                    ColorPick(color: orange, onPress: {
                        self.note.color = self.orange
                    })
                    ColorPick(color: blue, onPress: {
                        self.note.color = self.blue
                    })
                    ColorPick(color: purple, onPress: {
                        self.note.color = self.purple
                    })
                    ColorPick(color: yellow, onPress: {
                        self.note.color = self.yellow
                    })
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

struct ColorPick: View {
    var color: Color
    var onPress: () -> ()
    
    var body: some View {
        Button(action: self.onPress) {
            Circle()
                .fill(color)
                .frame(width: 25, height: 25)
        }
    }
}
