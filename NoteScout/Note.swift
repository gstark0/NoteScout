import SwiftUI

struct Note: View {
    
    var note: String = "Empty note"
    var date: String = "Unknown date"
    
    var body: some View {
        NavigationLink(destination: NoteScreen()) {
            HStack {
                VStack(alignment: .leading) {
                    Text("\(self.note)")
                        .font(.system(size: 20))
                        .lineSpacing(5)
                        .foregroundColor(.black)
                    Spacer()
                    Text(date)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                }
                .frame(height: 155)
                .padding()
                .padding()
                Spacer()
            }
                .background(Color(.red))
                .cornerRadius(20)
                .padding(.horizontal)
        }
    }
}
