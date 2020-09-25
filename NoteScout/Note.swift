import SwiftUI


class NoteData: ObservableObject, Identifiable {
    @Published var content: String = "Empty note..."
    var date: String
    @Published var color: Color = Color(red: 254/255, green: 165/255, blue: 123/255)
    
    init() {
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .medium
        date = formatter1.string(from: today)
    }
}
 

struct Note: View {
    
    //var note: String = "Empty note"
    //var date: String = "Unknown date"
    @ObservedObject var note: NoteData
    
    var body: some View {
        NavigationLink(destination: NoteScreen(note: note)) {
            HStack {
                VStack(alignment: .leading) {
                    Text("\(note.content)")
                        .font(.system(size: 20))
                        .lineSpacing(5)
                        .foregroundColor(.black)
                    Spacer()
                    Text(note.date)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                }
                .frame(height: 155)
                .padding()
                .padding()
                Spacer()
            }
                .background(note.color)
                .cornerRadius(20)
                .padding(.horizontal)
        }
    }
}
